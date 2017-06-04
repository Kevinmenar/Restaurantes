package restaurantes.controller.restaurante;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import restaurantes.model.cometario.Comentario;
import restaurantes.view.restaurant.restaurants.ComentariosView;

public class ControllerComentarios implements ActionListener {
    private ComentariosView comentariosView;
    private Comentario comentario;

    public ControllerComentarios(ComentariosView comentariosView, Comentario comentario) {
        this.comentariosView = comentariosView;
        this.comentario = comentario;
        comentariosView.addButton.addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        
    }
    
    
}
