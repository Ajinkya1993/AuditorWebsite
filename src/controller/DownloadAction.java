package controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDAO;
import dao.MyDAOException;






public class DownloadAction extends Action {

    private CustomerDAO customerDAO;
    private ServletContext ctx;
    private static final int BYTES_DOWNLOAD = 1024;
    ///home/ubuntu/
    private static final String CLOUD_PATH = "/var/lib/tomcat8/webapps/ROOT/"; //http:\\35.164.61.42\\var\\lib\\tomcat8\\webapps\\ROOT\\
    private static final String localPath = "D:\\Web\\apache-tomcat-8.0.38\\webapps\\ROOT\\";
    public DownloadAction(CustomerDAO customerDAO, ServletContext ctx) {
        this.customerDAO = customerDAO;
        this.ctx = ctx;
    }
    @Override
    public String getName() {
        return "download.do";
    }

    @Override
    public String perform(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        String button = request.getParameter("button");
        System.out.print("button: " + button);
        String columnsStr = request.getParameter("selectedColumn");
        String[] columns = request.getParameterValues("selectedColumn");
        try {
            if (button == null || button.length() == 0) return "homepage.jsp";
            else if ((button.equals("Download 100 Records") || button.equals("Download All Records")) && columnsStr != null) {
                List<List<String>> cus;
                String newFileName = "safe_harbor_data.csv";
                if (button.equals("Download 100 Records")) {
//                    cus = customerDAO.readfromAllData(columns, " LIMIT 10");
                    customerDAO.readAndOutputFile(columns, " LIMIT 100", CLOUD_PATH + newFileName);
                }
//                else cus = customerDAO.readfromAllData(columns, " LIMIT 50000");
                else customerDAO.readAndOutputFile(columns, " LIMIT 125000", CLOUD_PATH + newFileName);
                
//                outputFile(cus, localPath + newFileName); //local, succcess
//                outputFile(cus, cloudPath + newFileName);
                System.out.println("---start download file---");
//                return localPath + newFileName; //local, success
                return "http://35.164.61.42/" + newFileName;
            }
        
        } catch (Exception e) {
            // TODO Auto-generated catch block
            List<String> list = new ArrayList<>();
            list.add(e.getMessage());
            for (StackTraceElement ste : e.getStackTrace()) {
                list.add(ste.getLineNumber() + " " + ste.getClassName());
            }
            request.setAttribute("errorList", list);
            return "homepage.jsp";
        }
        return "homepage.jsp";
    }

    //https://www.mkyong.com/java/how-to-write-to-file-in-java-bufferedwriter-example/
    public void outputFile(List<List<String>> input, String outputName) throws IOException {
        BufferedWriter bw = null;
        FileWriter fw = null;

        try {
            fw = new FileWriter(outputName); //permission denied
            bw = new BufferedWriter(fw);
            for (List<String> li : input) {
                StringBuilder sb = new StringBuilder();
                for (String s : li) {
                    sb.append(s + ",");
                }
                bw.write(sb.toString() + "\n");
            }
            System.out.println("Done");

        } finally {
            try {
                if (bw != null)
                    bw.close();
                if (fw != null)
                    fw.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
    }
    
    //http://www.mkyong.com/servlet/servlet-code-to-download-text-file-from-website-java/
   /* private void downloadFile(String fileName, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        response.setHeader("Content-Disposition",
                         "attachment;filename=downloadname.csv");
        InputStream is = ctx.getResourceAsStream("test001.csv");

        int read=0;
        byte[] bytes = new byte[BYTES_DOWNLOAD];
        OutputStream os = response.getOutputStream();

        while((read = is.read(bytes))!= -1){
            os.write(bytes, 0, read);
        }
        os.flush();
        os.close();
        
    }*/
}
