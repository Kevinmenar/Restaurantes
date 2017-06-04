package restaurantes.controller.restaurante;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.view.restaurant.restaurants.PlatilloPanel;
import restaurantes.model.restaurante.Platillo;

public class ControllerPlatillos implements ActionListener {
    private PlatilloPanel platilloView;
    private Platillo platilloModel;
    private int idRestaurante;
    private String functionView;
    private boolean state;

    public ControllerPlatillos(PlatilloPanel platilloView, Platillo platilloModel, String functionView) {
        this.platilloView = platilloView;
        this.platilloModel = platilloModel;
        this.idRestaurante = idRestaurante;
        this.functionView = functionView;
        platilloView.addCommentButton.addActionListener(this);
        platilloView.addPlatilloRestauranteButton.addActionListener(this);
        platilloView.createButton.addActionListener(this);
        platilloView.deleteButton.addActionListener(this);
        platilloView.displayCommentButton.addActionListener(this);
        if(this.functionView == "Borrar") {
            platilloView.createButton.setVisible(false);
            platilloView.addPlatilloRestauranteButton.setVisible(false);
            platilloView.displayCommentButton.setVisible(false);
            platilloView.addCommentButton.setVisible(false);
            platilloView.platilloTextField.setEditable(false);
            platilloView.descriptionTextArea.setEditable(false);
        } else if (this.functionView == "Añadir"){
            platilloView.deleteButton.setVisible(false);
            platilloView.addPlatilloRestauranteButton.setVisible(false);
            platilloView.displayCommentButton.setVisible(false);
            platilloView.addCommentButton.setVisible(false);
        }
    }

    public int getIdRestaurante() {
        return idRestaurante;
    }

    public void setIdRestaurante(int idRestaurante) {
        this.idRestaurante = idRestaurante;
    }
    
    public ControllerPlatillos() {
        
    }

    public PlatilloPanel getPlatilloView() {
        return platilloView;
    }

    public void setPlatilloView(PlatilloPanel platilloView) {
        this.platilloView = platilloView;
    }
    
    public void setState (boolean state) {
        this.state = state;
        if (state) {
            platilloView.addPlatilloRestauranteButton.setText("Quitar de restaurante");
            platilloView.createButton.setVisible(false);
            platilloView.deleteButton.setVisible(false);
            platilloView.platilloTextField.setEditable(false);
            platilloView.descriptionTextArea.setEditable(false);
        } else {
            platilloView.displayCommentButton.setVisible(false);
            platilloView.addCommentButton.setVisible(false);
            platilloView.createButton.setVisible(false);
            platilloView.deleteButton.setVisible(false);
            platilloView.platilloTextField.setEditable(false);
            platilloView.descriptionTextArea.setEditable(false);
        }
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(platilloView.addCommentButton == e.getSource()) {
                      
        } else if (platilloView.addPlatilloRestauranteButton == e.getSource()) {
            if (state) {
                platilloView.addPlatilloRestauranteButton.setText("Añadir a restaurante");
                platilloView.displayCommentButton.setVisible(false);
                platilloView.addCommentButton.setVisible(false);
                platilloView.createButton.setVisible(false);
                platilloView.deleteButton.setVisible(false);
                platilloView.platilloTextField.setEditable(false);
                platilloView.descriptionTextArea.setEditable(false);
            } else {
                platilloView.addPlatilloRestauranteButton.setText("Quitar de restaurante");
                platilloView.displayCommentButton.setVisible(true);
                platilloView.addCommentButton.setVisible(true);
                platilloView.createButton.setVisible(false);
                platilloView.deleteButton.setVisible(false);
                platilloView.platilloTextField.setEditable(false);
                platilloView.descriptionTextArea.setEditable(false);
            }
            this.state = !state;
        } else if (platilloView.createButton == e.getSource()) {
            displayCommentaries();
        } else if (platilloView.deleteButton == e.getSource()) {
        
        } else {
        
        }
    }
    
    
    public void displayCommentaries() {
        
    }
    
}
