package restaurantes.model.restaurante;

public class ItemRestaurante {
    private int id;
    private String nombre;

    public ItemRestaurante(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public ItemRestaurante() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
