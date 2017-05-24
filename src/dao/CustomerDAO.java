package dao;


import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;



public class CustomerDAO {
    private List<Connection> connectionPool = new ArrayList<Connection>();

    private String jdbcDriver;
    private String jdbcURL;
    private final String alldataTable = "newJoinedTable";
    private final static String[] ALL_COLUMN_NAMES = {"ad_keywords",
            "coupon_code", "age", "gender",  "ethnicity", "zip", "state", "disease_name", "disease_treats",
            "chemical_name", "marketing_name", "prescription_probability", "consent_level", 
            "authorization_date"};
    private final String[] ZIP_ARR = {"036","692", "878", "059", "790", 
            "879", "063", "821", "884", "102", "823", "890", "203", "830", "893", "556", "831"};
    private final Set<String> ZIP_SET = new HashSet<String>(Arrays.asList(ZIP_ARR));
    public CustomerDAO(String jdbcDriver, String jdbcURL)
            throws MyDAOException {
        this.jdbcDriver = jdbcDriver;
        this.jdbcURL = jdbcURL;
    }
    public List<List<String>> readfromAllData(String[] arr, String limit) throws MyDAOException {
        List<List<String>> res = new ArrayList<>();
        
        int[] columnIdx = new int[arr.length];
        List<String> tableHeader = new ArrayList<>();
        for (int i = 0; i < arr.length; i++) {
            columnIdx[i] = Integer.parseInt(arr[i]);
            tableHeader.add(ALL_COLUMN_NAMES[columnIdx[i] - 1]);
        }
        res.add(tableHeader);
        
        Connection con = null;
        try {
            con = getConnection();
            con.setAutoCommit(false);
//            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM "
//                    + tableName + " WHERE userName=?");
//            pstmt.setString(1, userName);
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM " + alldataTable + limit);
            pstmt.setFetchSize(254726);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                
                List<String> list = new ArrayList<String>();
               
//                list.add(rs.getString(1)); //insurance_member_id
//                list.add(rs.getString(2)); //grocery_member_id
//                list.add(rs.getString(3)); //plan_number
//                list.add(rs.getString(4)); //date_of_birth
//                list.add(rs.getString(5)); //address
//                list.add(rs.getString(6)); //credit_card
//                list.add(rs.getString(7)); //ad_keywords
//                list.add(rs.getString(8)); //coupon_code
//                list.add(rs.getString(9)); //firstname
//                list.add(rs.getString(10)); //lastname
//                list.add(rs.getString(11)); //gender
//                list.add(rs.getString(12)); //ethnicity
//                list.add(rs.getString(13)); //ssn
//                list.add(rs.getString(14)); //zip
//                list.add(rs.getString(15)); //id
//                list.add(rs.getString(16)); //city
//                list.add(rs.getString(17)); //state
                
                for (int idx : columnIdx) {
                    String s = rs.getString(idx);
//                    if (idx == 4) {
//                        s = censorAge(s);
//                    }
//                    else if (idx == 14) {
//                        s = censorZip(s);
//                    }
                    list.add(s);
                }
                res.add(list);
            }
            rs.close();
            pstmt.close();
            releaseConnection(con);
        } catch (Exception e) {
            e.printStackTrace();
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e2) { /* ignore */
            }
            throw new MyDAOException(e);
        }
        return res;
    }
	private String censorZip(String s) {
	    s = s.substring(0,3);
	    if (ZIP_SET.contains(s)) return "000";
	    else return s;
	}
	private String censorAge(String s) {
        int year = Integer.parseInt(s.substring(0,4));
        if (year < 1928) {
            return "90+";
        }
        else return String.valueOf(2017 - year);
    }
	public void readAndOutputFile(String[] arr, String limit, String outputName) throws MyDAOException {
	    BufferedWriter bw = null;
        FileWriter fw = null;        
        Connection con = null;
        try {
            fw = new FileWriter(outputName); //permission denied
            bw = new BufferedWriter(fw, 32768);
            int[] columnIdx = new int[arr.length];
            StringBuilder tableHeader = new StringBuilder();
            for (int i = 0; i < arr.length; i++) {
                columnIdx[i] = Integer.parseInt(arr[i]);
                tableHeader.append(ALL_COLUMN_NAMES[columnIdx[i] - 1]);
                tableHeader.append(",");
            }
            bw.write(tableHeader.toString() + "\n");
            
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM " + alldataTable + limit);
            pstmt.setFetchSize(254726);
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
                
                StringBuilder sb = new StringBuilder();
                for (int idx : columnIdx) {
                    String s = rs.getString(idx);
                    if (idx == 4) {
                        s = censorAge(s);
                    }
                    else if (idx == 14) {
                        s = censorZip(s);
                    }
                    sb.append(s + ",");
                }
                bw.write(sb.toString() + "\n");
            }
            rs.close();
            pstmt.close();
            releaseConnection(con);
        } catch (Exception e) {
            e.printStackTrace();
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e2) { /* ignore */
            }
            throw new MyDAOException(e);
        }  try {
            if (bw != null)
                bw.close();
            if (fw != null)
                fw.close();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    private synchronized Connection getConnection() throws MyDAOException {
        if (connectionPool.size() > 0) {
            return connectionPool.remove(connectionPool.size() - 1);
        }

        try {
            Class.forName(jdbcDriver);
        } catch (ClassNotFoundException e) {
            throw new MyDAOException(e);
        }

        try {
            return DriverManager.getConnection(jdbcURL, "team1", ""); //!!!
        } catch (SQLException e) {
            throw new MyDAOException(e);
        }
    }
    

    private synchronized void releaseConnection(Connection con) {
        connectionPool.add(con);
    }
	
}
