package restaurantes.model.restaurante;

import java.util.ArrayList;
import restaurante.model.cometario.Comentario;

public class Restaurante {
    private String nombre;
    private String rangoPrecio;
    private String ciudad;
    private String pais;
    private String descripcion;
    private String establecimiento;
    private ArrayList<String> Dietas;
    private ArrayList<Llegada> llegadas;
    private ArrayList<String> tiposCocina;
    private ArrayList<String> eventos;
    private ArrayList<String> tiempoComida;
    private ArrayList<Comentario> cometarios;
    private ArrayList<Platillo> platillos;

    public Restaurante(String nombre, String rangoPrecio, String ciudad, String pais, String descripcion, String establecimiento, ArrayList<String> Dietas, ArrayList<Llegada> llegadas, ArrayList<String> tiposCocina, ArrayList<String> eventos, ArrayList<String> tiempoComida, ArrayList<Comentario> cometarios, ArrayList<Platillo> platillos) {
        this.nombre = nombre;
        this.rangoPrecio = rangoPrecio;
        this.ciudad = ciudad;
        this.pais = pais;
        this.descripcion = descripcion;
        this.establecimiento = establecimiento;
        this.Dietas = Dietas;
        this.llegadas = llegadas;
        this.tiposCocina = tiposCocina;
        this.eventos = eventos;
        this.tiempoComida = tiempoComida;
        this.cometarios = cometarios;
        this.platillos = platillos;
    }

    public Restaurante() {
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

    public ArrayList<String> getDietas() {
        return Dietas;
    }

    public void setDietas(ArrayList<String> Dietas) {
        this.Dietas = Dietas;
    }

    public ArrayList<Llegada> getLlegadas() {
        return llegadas;
    }

    public void setLlegadas(ArrayList<Llegada> llegadas) {
        this.llegadas = llegadas;
    }

    public ArrayList<String> getTiposCocina() {
        return tiposCocina;
    }

    public void setTiposCocina(ArrayList<String> tiposCocina) {
        this.tiposCocina = tiposCocina;
    }

    public ArrayList<String> getEventos() {
        return eventos;
    }

    public void setEventos(ArrayList<String> eventos) {
        this.eventos = eventos;
    }

    public ArrayList<String> getTiempoComida() {
        return tiempoComida;
    }

    public void setTiempoComida(ArrayList<String> tiempoComida) {
        this.tiempoComida = tiempoComida;
    }

    public ArrayList<Comentario> getCometarios() {
        return cometarios;
    }

    public void setCometarios(ArrayList<Comentario> cometarios) {
        this.cometarios = cometarios;
    }

    public ArrayList<Platillo> getPlatillos() {
        return platillos;
    }

    public void setPlatillos(ArrayList<Platillo> platillos) {
        this.platillos = platillos;
    }

    @Override
    public String toString() {
        return "Restaurante{" + "nombre=" + nombre + ", rangoPrecio=" + rangoPrecio + ", ciudad=" + ciudad + ", pais=" + pais + ", descripcion=" + descripcion + ", establecimiento=" + establecimiento + ", Dietas=" + Dietas + ", llegadas=" + llegadas + ", tiposCocina=" + tiposCocina + ", eventos=" + eventos + ", tiempoComida=" + tiempoComida + ", cometarios=" + cometarios + ", platillos=" + platillos + '}';
    }


}
