package restaurantes.model.restaurante;

import java.util.ArrayList;
import restaurante.model.cometario.Comentario;

public class Platillo {
    private String platillo;
    private String descripcion;
    private ArrayList<Comentario> cometarios;

    public Platillo(String platillo, String descripcion, ArrayList<Comentario> cometarios) {
        this.platillo = platillo;
        this.descripcion = descripcion;
        this.cometarios = cometarios;
    }

    public String getPlatillo() {
        return platillo;
    }

    public void setPlatillo(String platillo) {
        this.platillo = platillo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public ArrayList<Comentario> getCometarios() {
        return cometarios;
    }

    public void setCometarios(ArrayList<Comentario> cometarios) {
        this.cometarios = cometarios;
    }

    @Override
    public String toString() {
        return "Platillo{" + "platillo=" + platillo + ", descripcion=" + descripcion + ", cometarios=" + cometarios + '}';
    }

    
    
}
