package restaurantes.controller.login;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.controller.restaurante.ControllerDisplayPanel;
import restaurantes.view.login.LogInPanel;
import restaurantes.view.login.Main;
import restaurantes.view.restaurant.ContainerPanel;

public class ControllerLogIn implements ActionListener{
    private Main mainView;
    private LogInPanel logIn;
    private ContainerPanel containerPanel;
    private static ControllerLogIn controllerLogIn;
    
    
    public static ControllerLogIn getSingletonInstance () {
        if(controllerLogIn == null) {
            controllerLogIn = new ControllerLogIn();
        }
        return controllerLogIn;
    }
    
    public ControllerLogIn () {
        mainView = new Main();
        logIn = new LogInPanel();
        containerPanel = new ContainerPanel();
        logIn.ingresarButton.addActionListener(this);
        containerPanel.restaurantButton.addActionListener(this);
        containerPanel.foodsButton.addActionListener(this);
    }

    public Main getMainView() {
        return mainView;
    }

    public void setMainView(Main mainView) {
        this.mainView = mainView;
    }

    public ContainerPanel getContainerPanel() {
        return containerPanel;
    }

    public void setContainerPanel(ContainerPanel containerPanel) {
        this.containerPanel = containerPanel;
    }
    
    public void startComponets() {
        //mainView.setResizable(false);
        mainView.setLayout(new BorderLayout());
        mainView.getContentPane().add(logIn);
        mainView.pack();
        mainView.setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        ControllerDisplayPanel controllerDisplayPanel = new ControllerDisplayPanel();
        if(logIn.ingresarButton == e.getSource()) {
            boolean availableUser = true; //LLamar SP
            if (availableUser) {
                mainView.getContentPane().removeAll();
                mainView.getContentPane().add(containerPanel);
                mainView.repaint();
                mainView.revalidate();
            }
        } else if (containerPanel.restaurantButton == e.getSource()) {
            controllerDisplayPanel.displayOptions();
            mainView.repaint();
            mainView.revalidate();
            
        } else if (containerPanel.foodsButton == e.getSource()) {
            
        }
    }
    
}
