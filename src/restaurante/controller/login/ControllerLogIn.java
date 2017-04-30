package restaurante.controller.login;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.JPanel;
import restaurantes.model.restaurante.Restaurante;
import restaurantes.view.login.LogInPanel;
import restaurantes.view.login.Main;
import restaurantes.view.restaurant.ListaPaneles;
import restaurantes.view.restaurant.Restaurant;
import restaurantes.view.restaurant.restaurants.Options;
import restaurantes.view.restaurant.restaurants.Restaurantes;

public class ControllerLogIn implements ActionListener{
    private Main mainView;
    private LogInPanel logIn;
    private Restaurant restaurante;
    private Options options;
    private ListaPaneles listaPaneles;
    
    public ControllerLogIn () {
        mainView = new Main();
        logIn = new LogInPanel();
        restaurante = new Restaurant();
        options = new Options();
        listaPaneles = new ListaPaneles();
        logIn.ingresarButton.addActionListener(this);
        restaurante.restaurantButton.addActionListener(this);
        options.updateButton.addActionListener(this);
    }
    
    public void startComponets() {
        //mainView.setResizable(false);
        mainView.setLayout(new BorderLayout());
        mainView.getContentPane().add(logIn);
        mainView.pack();
        mainView.setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        if(logIn.ingresarButton == e.getSource()) {
            boolean availableUser = true; //LLamar SP
            if (availableUser) {
                mainView.getContentPane().removeAll();
                mainView.getContentPane().add(restaurante);
                mainView.repaint();
                mainView.revalidate();
            }
        } else if (restaurante.restaurantButton == e.getSource()) {
            options.setBounds(220, 0, 680, 500);
            restaurante.add(options);
            mainView.repaint();
            mainView.revalidate();
        } else if(options.updateButton == e.getSource()) {
            
            
            
            
            Restaurante restaurante1 = new Restaurante();
            restaurante1.setDescripcion("Descripcion1");
            restaurante1.setEstablecimiento("Establecimiento1");
            restaurante1.setNombre("Nombre1");
            restaurante1.setCiudad("ciudad1");
            restaurante1.setPais("Pais1");
            restaurante1.setRangoPrecio("RangoPrecio1");
            Restaurante restaurante2 = new Restaurante();
            restaurante2.setDescripcion("Descripcion2");
            restaurante2.setEstablecimiento("Establecimiento2");
            restaurante2.setNombre("Nombre2");
            restaurante2.setPais("ciudad2");
            restaurante2.setCiudad("Pais2");
            restaurante2.setRangoPrecio("RangoPrecio2");
            
            ArrayList<Restaurante> restaurantes= new ArrayList<Restaurante>();
            restaurantes.add(restaurante1);
            restaurantes.add(restaurante2);
            
            ArrayList<JPanel> panelList = new ArrayList<JPanel>();
            for (int i =0; i<restaurantes.size(); i++) {
                Restaurantes restaurante = new Restaurantes();
                restaurante.restaurantOuputLabel.setText(restaurantes.get(i).getNombre());
                restaurante.cityOutPutLabel.setText(restaurantes.get(i).getCiudad());
                restaurante.countryOutptLabel.setText(restaurantes.get(i).getPais());
                restaurante.establishmentOutputLabel.setText(restaurantes.get(i).getEstablecimiento());
                restaurante.priceOutputLabel.setText(restaurantes.get(i).getRangoPrecio());
                restaurante.descripcionTextArea.setText(restaurantes.get(i).getDescripcion());
                
                panelList.add(restaurante);
            }
            
            
            
            restaurante.remove(options);
            listaPaneles.setBounds(220, 0, 680, 500);
            listaPaneles.ShowItemList(panelList);
            restaurante.add(listaPaneles);
            mainView.repaint();
            mainView.revalidate();
            
        }
        else {
        }
    }
    
}
