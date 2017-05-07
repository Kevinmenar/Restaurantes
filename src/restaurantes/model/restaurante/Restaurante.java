package restaurantes.model.restaurante;

import java.util.ArrayList;
import restaurantes.model.cometario.Comentario;

public class Restaurante {
    private int Id;
    private String nombre;
    private String rangoPrecio;
    private String ciudad;
    private String pais;
    private String descripcion;
    private String establecimiento;

    public Restaurante(int Id, String nombre, String rangoPrecio, String ciudad, String pais, String descripcion, String establecimiento) {
        this.Id = Id;
        this.nombre = nombre;
        this.rangoPrecio = rangoPrecio;
        this.ciudad = ciudad;
        this.pais = pais;
        this.descripcion = descripcion;
        this.establecimiento = establecimiento;
    }

    public Restaurante() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRangoPrecio() {
        return rangoPrecio;
    }

    public void setRangoPrecio(String rangoPrecio) {
        this.rangoPrecio = rangoPrecio;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstablecimiento() {
        return establecimiento;
    }

    public void setEstablecimiento(String establecimiento) {
        this.establecimiento = establecimiento;
    }

    @Override
    public String toString() {
        return "Restaurante{" + "nombre=" + nombre + ", rangoPrecio=" + rangoPrecio + ", ciudad=" + ciudad + ", pais=" + pais + ", descripcion=" + descripcion + ", establecimiento=" + establecimiento;
    }


}
