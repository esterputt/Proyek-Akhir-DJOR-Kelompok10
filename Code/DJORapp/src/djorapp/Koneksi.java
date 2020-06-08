
package djorapp;
import java.sql.*;


/**
 *
 * @author User
 */
public class Koneksi {
    public static void main(String[] args) {
        try {
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    Connection conn = null;
    conn =  DriverManager.getConnection("jdbc:mysql://127.0.0.1/djor?" +
                "user=root&password=123456789");
} catch (SQLException e) {
    System.out.println("SQL Exception: "+ e.toString());
} catch (ClassNotFoundException cE) {
    System.out.println("Class Not Found Exception: "+ cE.toString());
} catch (Exception ex) {
    System.out.println("Exception: "+ ex.toString());
}
    }
    
}
