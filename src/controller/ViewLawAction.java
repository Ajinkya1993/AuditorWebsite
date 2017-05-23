package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MyDAOException;

public class ViewLawAction extends Action{

    @Override
    public String getName() {
        // TODO Auto-generated method stub
        return "viewLaw.do";
    }

    @Override
    public String perform(HttpServletRequest request, HttpServletResponse response) {
        // TODO Auto-generated method stub

        HttpSession session = request.getSession();
        String button = request.getParameter("button");
        System.out.print("button: " + button);
        if (button == null || button.length() == 0) return "homepage.jsp";
        else if (button.equals("Download HIPPA Law")) {
            return "http://35.164.61.42/" + "hipaa-simplification-201303.pdf";

        } else if (button.equals("View Safe Harbor Regulation Details")) {
            return "safeharbor.jsp";
        } else if (button.equals("View Expert Determination Regulation Details")) {
            return "expertDetermination.jsp";
        }

        return "homepage.jsp";
    }

}
