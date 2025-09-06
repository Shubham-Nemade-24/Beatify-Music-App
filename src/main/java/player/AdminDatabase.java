package player;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDatabase {
	Connection con ;

    public AdminDatabase(Connection con) {
        this.con = con;
    }
	//admin login
    public Admin logAdmin(String email, String pass){
        Admin adm=null;
        try{
            String query ="select * from admin where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                adm = new Admin();
                adm.setId(rs.getInt("id"));
                adm.setName(rs.getString("name"));
                adm.setEmail(rs.getString("email"));
                adm.setPassword(rs.getString("password"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return adm;
    }
}
