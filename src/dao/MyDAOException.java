package dao;

public class MyDAOException extends Exception {
    private static final long serialVersionUID = 1L;

    public MyDAOException(Exception e) {
        super(e);
        e.printStackTrace();
    }

    public MyDAOException(String s) {
        super(s);
        System.err.println(s);
    }
}
