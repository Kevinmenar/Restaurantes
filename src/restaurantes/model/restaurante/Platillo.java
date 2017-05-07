package restaurantes.model.restaurante;

public class Platillo {
    private int id;
    private String platillo;
    private String descripcion;

    public Platillo(int id, String platillo, String descripcion) {
        this.id = id;
        this.platillo = platillo;
        this.descripcion = descripcion;
    }

    public Platillo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}
