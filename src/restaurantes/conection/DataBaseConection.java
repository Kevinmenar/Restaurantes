package restaurantes.conection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBaseConection {

    public DataBaseConection() {
    }  
    
    public void addEstadoSolicitud (String pSolicitud){
        Connection con = null;
        CallableStatement proc_stmt = null;
        ResultSet rs = null;
        
        try {
            
            String server = "ecrhin\\Estudiantes";

            int port = 1433;

            String database = "BaseDatosRestaurante";

            String jdbcUrl = "jdbc:sqlserver://"+server+":"+port+";databaseName = "+database+";integratedSecurity=true";
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(jdbcUrl);
            
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            
            try {
                proc_stmt.close();
                con.close();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            
        }
    }
}
