package restaurantes.controller.restaurante;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.model.restaurante.Restaurante;
import restaurantes.view.restaurant.restaurants.Restaurantes;

public class ControllerRestaurantItem implements ActionListener{
    Restaurante restaurante;
    Restaurantes restaurantes;

    public ControllerRestaurantItem(Restaurante restaurante, Restaurantes restaurantes) {
        this.restaurante = restaurante;
        this.restaurantes = restaurantes;
        restaurantes.dietButton.addActionListener(this);
        restaurantes.cookButton.addActionListener(this);
        restaurantes.timeButton.addActionListener(this);
        restaurantes.goodForButton.addActionListener(this);
        restaurantes.foodsButton.addActionListener(this);
        restaurantes.comeInButton.addActionListener(this);
        restaurantes.updateButton.addActionListener(this);
    }

    public Restaurante getRestaurante() {
        return restaurante;
    }

    public void setRestaurante(Restaurante restaurante) {
        this.restaurante = restaurante;
    }

    public Restaurantes getRestaurantes() {
        return restaurantes;
    }

    public void setRestaurantes(Restaurantes restaurantes) {
        this.restaurantes = restaurantes;
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        if (restaurantes.dietButton == e.getSource()) {
            int id = restaurante.getId();
            diets(id);
        } else if(restaurantes.cookButton == e.getSource()) {
            int id = restaurante.getId();
            cook(id);
        } else if (restaurantes.timeButton == e.getSource()) {
            int id = restaurante.getId();
            time(id);
        } else if (restaurantes.goodForButton == e.getSource()) {
            int id = restaurante.getId();
            goodFor(id);
        } else if (restaurantes.foodsButton == e.getSource()) {
            int id = restaurante.getId();
            foods(id);
        }
    }
    
    public void diets(int id) {
    }
    
    public void cook(int id) {
    }
    
    public void time(int id) {
    }
    
    public void goodFor(int id) {
    }
    
    public void foods(int id) {
    }
    
}
