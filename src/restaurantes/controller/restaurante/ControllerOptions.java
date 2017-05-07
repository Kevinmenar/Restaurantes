package restaurantes.controller.restaurante;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.view.restaurant.restaurants.OptionsRestaurantView;

public class ControllerOptions implements ActionListener{
    private OptionsRestaurantView options;
    
    ControllerOptions () {
        options = new OptionsRestaurantView();
        options.updateButton.addActionListener(this);
    }

    public OptionsRestaurantView getOptions() {
        return options;
    }

    public void setOptions(OptionsRestaurantView options) {
        this.options = options;
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (options.updateButton == e.getSource()) {
            updateWindow();
        }
    }
    
    public void updateWindow() {
    }
    
}
