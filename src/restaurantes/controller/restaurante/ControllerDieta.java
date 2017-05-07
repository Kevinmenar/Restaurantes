package restaurantes.controller.restaurante;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.view.restaurant.restaurants.RestaurantItem;

public class ControllerDieta implements ActionListener {
    private int idRestaurante;
    private int id;
    private RestaurantItem restaurantItem;
    private boolean function;
    private String window;

    public ControllerDieta(int idRestaurante, int id, RestaurantItem restaurantItem, boolean function, String pWidow) {
        this.idRestaurante = idRestaurante;
        this.restaurantItem = restaurantItem;
        this.function = function;
        this.id = id;
        this.window = pWidow;
        
        if(this.window == "Dieta") {
            this.restaurantItem.itemNameLabel.setText("Dieta");
        } else if(this.window == "Cocina") {
            this.restaurantItem.itemNameLabel.setText("Cocina");
        } else if(this.window == "Tiempo") {
            this.restaurantItem.itemNameLabel.setText("Tiempo");
        } else {
            this.restaurantItem.itemNameLabel.setText("BuenoPara");
        }
        
        restaurantItem.addButton.addActionListener(this);
        if (function) {
            restaurantItem.addButton.setText("Agregar");
        } else {
            restaurantItem.addButton.setText("Eliminar");
        }
    }

    public boolean isFunction() {
        return function;
    }

    public void setFunction(boolean function) {
        this.function = function;
    }

    public RestaurantItem getDieta() {
        return restaurantItem;
    }

    public void setDieta(RestaurantItem restaurantItem) {
        this.restaurantItem = restaurantItem;
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (function) {
            function = !function;
            restaurantItem.addButton.setText("Eliminar");
            if(this.window == "Dieta") {
                addDieta();
            } else if (this.window == "Cocina") {
                addCocina();
            } else if (this.window == "Tiempo") {
                addTiempo();
            } else {
                addBuenoPara();
            }
        } else {
            function = !function;
            restaurantItem.addButton.setText("Agregar");
            if(this.window == "Dieta") {
                deleteDieta();
            } else if (this.window == "Cocina") {
                deleteCocina();
            } else if (this.window == "Tiempo") {
                deleteTiempo();
            } else {
                deleteBuenoPara();
            }
        }
    }
    
    public void addDieta() {
    }
    
    public void deleteDieta() {
    }
    
    public void addCocina() {
    }
    
    public void deleteCocina() {
    }
    
    public void addTiempo() {
    }
    
    public void deleteTiempo() {
    }
    
    public void addBuenoPara() {
    }
    
    public void deleteBuenoPara() {
    }
}
