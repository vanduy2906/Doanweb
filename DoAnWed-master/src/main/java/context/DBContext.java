package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    private static String DB_URL = "jdbc:mysql://localhost:3306/doannhom10";
    private static String USER_NAME = "root";
    private static String PASSWORD = "tranduy2906";
          
 public static void main(String args[]) {
        try {
        	new DBContext();
			System.out.print(DBContext.getConnection());
			System.out.print("thanhcong");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL , USER_NAME, PASSWORD);
            System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;
    }

}
