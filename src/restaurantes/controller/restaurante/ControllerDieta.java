package restaurantes.controller.restaurante;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.view.restaurant.restaurants.Dieta;

public class ControllerDieta implements ActionListener{
    private int id;
    private Dieta dieta;

    public ControllerDieta(int id, Dieta dieta) {
        this.id = id;
        this.dieta = dieta;
        dieta.addButton.addActionListener(this);
    }

    public Dieta getDieta() {
        return dieta;
    }

    public void setDieta(Dieta dieta) {
        this.dieta = dieta;
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        addDieta(this.id);
    }
    
    public void addDieta(int id) {
        
    }
    
}
