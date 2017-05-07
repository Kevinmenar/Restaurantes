package restaurantes.controller.restaurante;

import java.util.ArrayList;
import javax.swing.JPanel;
import restaurantes.controller.login.ControllerLogIn;
import restaurantes.model.restaurante.ItemRestaurante;
import restaurantes.model.restaurante.Platillo;
import restaurantes.model.restaurante.Restaurante;
import restaurantes.view.restaurant.ContainerPanel;
import restaurantes.view.restaurant.restaurants.OptionsRestaurantView;
import restaurantes.view.restaurant.restaurants.PlatilloPanel;
import restaurantes.view.restaurant.restaurants.RestaurantItem;
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

        ArrayList<JPanel> panelList = new ArrayList<JPanel>();
        for (int i =0; i<restaurantes.size(); i++) {
            Restaurantes restaurante = new Restaurantes();
            restaurante.restaurantTextField.setText(restaurantes.get(i).getNombre());
            restaurante.ciudadTextField.setText(restaurantes.get(i).getCiudad());
            restaurante.paisTextField.setText(restaurantes.get(i).getPais());
            restaurante.establecimientoTextField.setText(restaurantes.get(i).getEstablecimiento());
            restaurante.precioTextField.setText(restaurantes.get(i).getRangoPrecio());
            restaurante.descripcionTextArea.setText(restaurantes.get(i).getDescripcion());

            ControllerRestaurantItem controllerRestaurantItem = new ControllerRestaurantItem (restaurantes.get(i), restaurante) {
                public void diets(int id) {
                    displayWindows(id, "Dieta");
                }
                public void cook(int id) {
                    displayWindows(id, "Cocina");
                }
                public void time(int id) {
                    displayWindows(id, "Tiempo");
                }
                public void goodFor(int id) {
                    displayWindows(id, "BuenoPara");
                }
                public void foods(int id) {
                    displayfoods(id, "Restaurante");
                }
            };
            panelList.add(controllerRestaurantItem.getRestaurantes());
        }
        
        displayPanel.ShowItemList(panelList);
        controller.getMainView().repaint();
        controller.getMainView().revalidate();
        
    }
    
    public void displayWindows(int id, String window) {
        displayPanel.containerPanel.removeAll();
        ArrayList<ItemRestaurante> dietasAdded = new ArrayList<ItemRestaurante>();
        ItemRestaurante item1 = new ItemRestaurante(1, "Item1");
        ItemRestaurante item2 = new ItemRestaurante(2, "Item2");
        dietasAdded.add(item1);
        dietasAdded.add(item2);
        
        ArrayList<JPanel> panelList = new ArrayList<JPanel>();
        for (int i =0; i<dietasAdded.size(); i++) {
            RestaurantItem dieta = new RestaurantItem();
            dieta.itemOutputLabel.setText(dietasAdded.get(i).getNombre());

            ControllerDieta controllerDieta = new ControllerDieta (id, dietasAdded.get(i).getId(), dieta, true, window);
            panelList.add(controllerDieta.getDieta());
        }
        
        ArrayList<ItemRestaurante> notdietasAdded = new ArrayList<ItemRestaurante>();
        ItemRestaurante item3 = new ItemRestaurante(3, "Item3");
        ItemRestaurante item4 = new ItemRestaurante(4, "Item4");
        notdietasAdded.add(item3);
        notdietasAdded.add(item4);
        
        for (int i =0; i<notdietasAdded.size(); i++) {
            RestaurantItem dieta = new RestaurantItem();
            dieta.itemOutputLabel.setText(notdietasAdded.get(i).getNombre());

            ControllerDieta controllerDieta = new ControllerDieta (i, dietasAdded.get(i).getId(), dieta, false, window);
            panelList.add(controllerDieta.getDieta());
        }
        
        displayPanel.ShowItemList(panelList);
        controller.getMainView().repaint();
        controller.getMainView().revalidate();
    }
    
    public void displayfoods(int id, String function) {
        displayPanel.containerPanel.removeAll();
        ArrayList<Platillo> platillos = new ArrayList<Platillo>();
        
        if(function == "Restaurante") {
            Platillo platillo1 = new Platillo(1, "Sopa", "Sopa Tica");
            Platillo platillo2 = new Platillo(2, "Sopa", "Sopa Azteca");
            platillos.add(platillo1);
            platillos.add(platillo2);
        } else {
        }
                
        ArrayList<JPanel> panelList = new ArrayList<JPanel>();
        for (int i =0; i<platillos.size(); i++) {
            PlatilloPanel platilloView = new PlatilloPanel();
            platilloView.platilloTextField.setText(platillos.get(i).getPlatillo());
            platilloView.descriptionTextArea.setText(platillos.get(i).getDescripcion());
            ControllerPlatillos controllerPlatillos = new ControllerPlatillos(platilloView, platillos.get(i), function);
            controllerPlatillos.setState(true);
            panelList.add(controllerPlatillos.getPlatilloView());
            
        }
        displayPanel.ShowItemList(panelList);
        controller.getMainView().repaint();
        controller.getMainView().revalidate();
    }
}
