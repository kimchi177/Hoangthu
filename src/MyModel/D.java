package MyModel;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class D 
{
    public Connection Connection()
    {String my_class="com.mysql.jdbc.Driver";
	 String connecttionUrl;
	 String user;
	 String pass;
        try 
        {
        	connecttionUrl="jdbc:mysql://localhost/web_qlbc";
    		user ="root";
    		pass="123";
            Class.forName(my_class);
          //  String TechWorld3g_2 = "jdbc:mysql://localhost:3306/techworld3g_2?user=root";
            Connection myConnection = DriverManager.getConnection(connecttionUrl,user,pass);
            
            return myConnection;
        } catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(D.class.getName()).log(Level.SEVERE, null, ex);}
        return null;
    }
}

