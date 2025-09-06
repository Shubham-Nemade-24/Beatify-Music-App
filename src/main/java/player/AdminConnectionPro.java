package player;
import java.sql.*;
public class AdminConnectionPro {
    private static Connection con;
    
    public static Connection getConnection(){
        try{
        	Class.forName("org.postgresql.Driver");
            con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/logindb","postgres","postgres");
            if(con!=null)
            	System.out.println("ok");
            else
            	System.out.println("not ok");
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}

