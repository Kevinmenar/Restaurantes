package restaurantes.model.cometario;

import java.sql.Date;
import restaurantes.model.usuario.Usuario;

public class Comentario {
    private int valoracion;
    private String cometario;
    private String clasificacion;
    private Date fecha;

    public Comentario(int valoracion, String cometario, String clasificacion, Date fecha) {
        this.valoracion = valoracion;
        this.cometario = cometario;
        this.clasificacion = clasificacion;
        this.fecha = fecha;
    }

    public Comentario() {
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
        return "ComentarioRestaurante{" + ", valoracion=" + valoracion + ", cometario=" + cometario + ", clasificacion=" + clasificacion + ", fecha=" + fecha + '}';
    }
    
    
}
