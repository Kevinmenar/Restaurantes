package restaurantes.controller.restaurante;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.view.restaurant.restaurants.Options;

public class ControllerOptions implements ActionListener{
    private Options options;
    
    ControllerOptions () {
        options = new Options();
        options.updateButton.addActionListener(this);
    }

    public Options getOptions() {
        return options;
    }

    public void setOptions(Options options) {
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
