package restaurantes;

import restaurantes.conection.DataBaseConection;
import restaurantes.controller.login.ControllerLogIn;

public class Restaurantes {

   
    public static void main(String[] args) {
        //ControllerLogIn controller = ControllerLogIn.getSingletonInstance();
        //controller.startComponets();
        
        DataBaseConection conection = new DataBaseConection();
        conection.addEstadoSolicitud("Solicitud");
    }
    
}