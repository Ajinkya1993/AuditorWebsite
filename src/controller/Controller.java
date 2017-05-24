package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDAO;
import dao.MyDAOException;

public class Controller extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CustomerDAO customerDAO;
    @Override
    public void init() throws ServletException {
        String jdbcDriver = getInitParameter("jdbcDriver");
        String jdbcURL = getInitParameter("jdbcURL");

        try {
            customerDAO = new CustomerDAO(jdbcDriver, jdbcURL);
            
        } catch (MyDAOException e) {
            throw new ServletException(e);
        }

        Action.add(new DownloadAction(customerDAO, getServletContext()));
        Action.add(new ViewLawAction());
        
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nextPage = performTheAction(request, response);
        sendToNextPage(nextPage, request, response);
    }

    /*
     * Extracts the requested action and (depending on whether the user is
     * logged in) perform it (or make the user login).
     *
     * @param request
     *
     * @return the next page (the view)
     */
    private String performTheAction(HttpServletRequest request, HttpServletResponse response) {
        String servletPath = request.getServletPath();
        String action = getActionName(servletPath);
        return Action.perform(action, request, response);
    }

    /*
     * If nextPage is null, send back 404 If nextPage ends with ".do", redirect
     * to this page. If nextPage ends with ".jsp", dispatch (forward) to the
     * page (the view) This is the common case
     */
    private void sendToNextPage(String nextPage, HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        System.out.println("nextPage " + nextPage);
        if (nextPage == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, request.getServletPath());
            return;
        }

        if (nextPage.endsWith(".do")) {
            response.sendRedirect(nextPage);
            return;
        }
        
        if (nextPage.startsWith("http") || nextPage.startsWith("D:") ) {
            response.sendRedirect(nextPage);
            return;
        }

        if (nextPage.endsWith(".jsp")) {
            RequestDispatcher d = request.getRequestDispatcher("WEB-INF/JSP/" + nextPage);
            d.forward(request, response);
            return;
        }

        response.sendRedirect(nextPage);
    }

    /*
     * Returns the path component after the last slash removing any "extension"
     * if present.
     */
    private String getActionName(String path) {
        // We're guaranteed that the path will start with a slash
        int slash = path.lastIndexOf('/');
        return path.substring(slash + 1);
    }
}

