
package restaurantes.view.restaurant;

import java.awt.BorderLayout;
import java.util.List;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import restaurantes.render.PanelCellEditorRenderer;
import restaurantes.render.PanelTableModel;

public class ListaPaneles extends javax.swing.JPanel {

    private JTable CompTable = null;
    private PanelTableModel CompModel = null;
    
    public ListaPaneles() {
        initComponents();
    }
    
    public void ShowItemList(List<JPanel> paneList) {
        CompModel = new PanelTableModel();
        
        for (int i = 0; i < paneList.size(); i++) {
            CompModel.addRow(paneList.get(i));
        }
        
        JTable table = new JTable(CompModel);
        table.setRowHeight(paneList.get(0).getPreferredSize().height);
        table.setTableHeader(null);
        PanelCellEditorRenderer PanelCellEditorRenderer = new PanelCellEditorRenderer();
        table.setDefaultRenderer(Object.class, PanelCellEditorRenderer);
        table.setDefaultEditor(Object.class, PanelCellEditorRenderer);
        
        CompTable = table;
        
        JScrollPane CompTableScrollpane = new JScrollPane(CompTable, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
                JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);

        this.add(CompTableScrollpane, BorderLayout.CENTER);
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setLayout(new java.awt.GridLayout());
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
