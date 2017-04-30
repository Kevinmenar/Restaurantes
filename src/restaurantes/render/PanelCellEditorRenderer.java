package restaurantes.render;

import java.awt.Component;
import java.util.EventObject;
import javax.swing.AbstractCellEditor;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableCellRenderer;
import restaurantes.view.restaurant.restaurants.Restaurantes;

public class PanelCellEditorRenderer extends AbstractCellEditor implements TableCellRenderer, TableCellEditor {

    private static final long serialVersionUID = 1L;
    private JPanel renderer = new Restaurantes();
    private JPanel editor = new Restaurantes();

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
        //renderer.setComp((Comp) value);
        System.out.println("Value getTableCellRendererComponent");
        return (JPanel) value;
    }

    @Override
    public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
        //editor.setComp((Comp) value);
        System.out.println("Value getTableCellEditorComponent");
        return (JPanel) value;
    }

    @Override
    public Object getCellEditorValue() {
        return editor;
    }

    @Override
    public boolean isCellEditable(EventObject anEvent) {
        return true;
    }

    @Override
    public boolean shouldSelectCell(EventObject anEvent) {
        return false;
    }
}