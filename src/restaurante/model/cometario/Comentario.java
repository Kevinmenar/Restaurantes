package restaurante.model.cometario;

import java.sql.Date;
import restaurantes.model.usuario.Usuario;

public class Comentario {
    private Usuario colaborador;
    private int valoracion;
    private String cometario;
    private String clasificacion;
    private Date fecha;

    public Comentario(Usuario colaborador, int valoracion, String cometario, String clasificacion, Date fecha) {
        this.colaborador = colaborador;
        this.valoracion = valoracion;
        this.cometario = cometario;
        this.clasificacion = clasificacion;
        this.fecha = fecha;
    }

    public Comentario() {
    }

    public Usuario getColaborador() {
        return colaborador;
    }

    public void setColaborador(Usuario colaborador) {
        this.colaborador = colaborador;
    }

    public int getValoracion() {
        return valoracion;
    }

    public void setValoracion(int valoracion) {
        this.valoracion = valoracion;
    }

    public String getCometario() {
        return cometario;
    }

    public void setCometario(String cometario) {
        this.cometario = cometario;
    }

    public String getClasificacion() {
        return clasificacion;
    }

    public void setClasificacion(String clasificacion) {
        this.clasificacion = clasificacion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        return "ComentarioRestaurante{" + "colaborador=" + colaborador + ", valoracion=" + valoracion + ", cometario=" + cometario + ", clasificacion=" + clasificacion + ", fecha=" + fecha + '}';
    }
    
    
}
