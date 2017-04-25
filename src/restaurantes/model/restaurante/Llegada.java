package restaurantes.model.restaurante;

public class Llegada {
    private String transporte;
    private String instruccion;

    public Llegada(String transporte, String instruccion) {
        this.transporte = transporte;
        this.instruccion = instruccion;
    }
    
    public Llegada() { 
    }

    public String getTransporte() {
        return transporte;
    }

    public void setTransporte(String transporte) {
        this.transporte = transporte;
    }

    public String getInstruccion() {
        return instruccion;
    }

    public void setInstruccion(String instruccion) {
        this.instruccion = instruccion;
    }

    @Override
    public String toString() {
        return "Llegada{" + "transporte=" + transporte + ", instruccion=" + instruccion + '}';
    }
    
    
}
