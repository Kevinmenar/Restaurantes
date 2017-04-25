
package restaurantes.view.restaurant;

import java.awt.event.AdjustmentEvent;
import java.awt.event.AdjustmentListener;
import java.util.List;
import javax.swing.DefaultListModel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollBar;
import javax.swing.JScrollPane;
import restaurantes.Render.PanelRenderer;
public class ListaPaneles extends javax.swing.JPanel {

    public ListaPaneles() {
        initComponents();
    }
    
    public void ShowItemList(List<JPanel> paneList) {


        DefaultListModel model = new DefaultListModel();

        for (JPanel pane:paneList) {

                model.addElement(pane);

        }
        final JList list = new JList(model);
        list.setFixedCellHeight(40);
        list.setSelectedIndex(-1);

        list.setCellRenderer(new PanelRenderer());
        JScrollPane scroll1 = new JScrollPane(list);
        final JScrollBar scrollBar = scroll1.getVerticalScrollBar();
        scrollBar.addAdjustmentListener(new AdjustmentListener() {
            @Override
            public void adjustmentValueChanged(AdjustmentEvent e) {
                System.out.println("JScrollBar's current value = " + scrollBar.getValue());
            }
        });


        this.add(scroll1);
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 680, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 500, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
