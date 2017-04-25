package restaurantes.model.usuario;

import java.util.ArrayList;

public class Usuario {
    private String nombre;
    private String nombreUsuario;
    private String correo;
    private String pais;
    private String provincia;
    private String Sexo;
    private ArrayList<Usuario> amigos;

    public Usuario(String nombre, String nombreUsuario, String correo, String pais, String provincia, String Sexo, ArrayList<Usuario> amigos) {
        this.nombre = nombre;
        this.nombreUsuario = nombreUsuario;
        this.correo = correo;
        this.pais = pais;
        this.provincia = provincia;
        this.Sexo = Sexo;
        this.amigos = amigos;
    }

    public Usuario() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public ArrayList<Usuario> getAmigos() {
        return amigos;
    }

    public void setAmigos(ArrayList<Usuario> amigos) {
        this.amigos = amigos;
    }

    @Override
    public String toString() {
        return "Usuario{" + "nombre=" + nombre + ", nombreUsuario=" + nombreUsuario + ", correo=" + correo + ", pais=" + pais + ", provincia=" + provincia + ", Sexo=" + Sexo + ", amigos=" + amigos + '}';
    }
    
}
