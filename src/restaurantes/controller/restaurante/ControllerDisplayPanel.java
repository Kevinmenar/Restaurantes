package restaurantes.controller.restaurante;

import java.util.ArrayList;
import javax.swing.JPanel;
import restaurantes.controller.login.ControllerLogIn;
import restaurantes.model.restaurante.Restaurante;
import restaurantes.view.restaurant.ContainerPanel;
import restaurantes.view.restaurant.DisplayPanel;
import restaurantes.view.restaurant.ListaPaneles;
import restaurantes.view.restaurant.restaurants.Dieta;
import restaurantes.view.restaurant.restaurants.Options;
import restaurantes.view.restaurant.restaurants.Restaurantes;

public class ControllerDisplayPanel {
    private ControllerOptions controllerOptions;
    private ContainerPanel displayPanel;
    private ControllerLogIn controller;
    
    public ControllerDisplayPanel() {
        controllerOptions = new ControllerOptions() {
            public void updateWindow() {
                displayListaPaneles();
            }
        };
        controller = ControllerLogIn.getSingletonInstance();
        displayPanel = controller.getContainerPanel();
    }

    public void setDisplayPanel(ContainerPanel displayPanel) {
        this.displayPanel = displayPanel;
    }
    
    public void displayOptions() {
        displayPanel.containerPanel.removeAll();
        JPanel options = controllerOptions.getOptions();
        displayPanel.containerPanel.add(options);
        controller.getMainView().repaint();
        controller.getMainView().revalidate();
    }
    
    private void displayListaPaneles() {
        
        
        displayPanel.containerPanel.removeAll();
        Restaurante restaurante1 = new Restaurante();
        restaurante1.setDescripcion("Descripcion1");
        restaurante1.setEstablecimiento("Establecimiento1");
        restaurante1.setNombre("Nombre1");
        restaurante1.setCiudad("ciudad1");
        restaurante1.setPais("Pais1");
        restaurante1.setRangoPrecio("RangoPrecio1");
        restaurante1.setId(1);
        Restaurante restaurante2 = new Restaurante();
        restaurante2.setDescripcion("Descripcion2");
        restaurante2.setEstablecimiento("Establecimiento2");
        restaurante2.setNombre("Nombre2");
        restaurante2.setPais("ciudad2");
        restaurante2.setCiudad("Pais2");
        restaurante2.setRangoPrecio("RangoPrecio2");
        restaurante2.setId(2);

        ArrayList<Restaurante> restaurantes= new ArrayList<Restaurante>();
        restaurantes.add(restaurante1);
        restaurantes.add(restaurante2);

        //ArrayList<ControllerRestaurantItem> restaurantItemList = new ArrayList<ControllerRestaurantItem>();
        ArrayList<JPanel> panelList = new ArrayList<JPanel>();
        for (int i =0; i<restaurantes.size(); i++) {
            Restaurantes restaurante = new Restaurantes();
            restaurante.restaurantOuputLabel.setText(restaurantes.get(i).getNombre());
            restaurante.cityOutPutLabel.setText(restaurantes.get(i).getCiudad());
            restaurante.countryOutptLabel.setText(restaurantes.get(i).getPais());
            restaurante.establishmentOutputLabel.setText(restaurantes.get(i).getEstablecimiento());
            restaurante.priceOutputLabel.setText(restaurantes.get(i).getRangoPrecio());
            restaurante.descripcionTextArea.setText(restaurantes.get(i).getDescripcion());

            //restaurante.dietButton.addActionListener(this);
            ControllerRestaurantItem controllerRestaurantItem = new ControllerRestaurantItem (restaurantes.get(i), restaurante) {
                public void diets(int id) {
                    displayDiets(id, true);
                }
            };
            //restaurantItemList.add(controllerRestaurantItem);
            panelList.add(controllerRestaurantItem.getRestaurantes());
        }
        
        displayPanel.ShowItemList(panelList);
        controller.getMainView().repaint();
        controller.getMainView().revalidate();
        
    }
    
    public void displayDiets(int id, boolean use) {
        displayPanel.containerPanel.removeAll();
        ArrayList<String> dietas = new ArrayList<String>();
        dietas.add("Vegetariana");
        dietas.add("Carnivora");
        
        //ArrayList<ControllerDieta> dietItemList = new ArrayList<ControllerDieta>();
        ArrayList<JPanel> panelList = new ArrayList<JPanel>();
        for (int i =0; i<dietas.size(); i++) {
            Dieta dieta = new Dieta();
            if (use) {
                dieta.addButton.setVisible(false);
            }
            dieta.dietOutputLabel.setText(dietas.get(i));

            //restaurante.dietButton.addActionListener(this);
            ControllerDieta controllerDieta = new ControllerDieta (i, dieta) {
                public void addDieta(int id) {
                    System.out.println("Displayed");
                }
            };
            //dietItemList.add(controllerRestaurantItem);
            panelList.add(controllerDieta.getDieta());
        }
        displayPanel.ShowItemList(panelList);
        controller.getMainView().repaint();
        controller.getMainView().revalidate();
    }
        
        
}
