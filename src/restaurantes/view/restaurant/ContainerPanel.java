/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restaurantes.view.restaurant;

import java.awt.BorderLayout;
import java.util.List;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import restaurantes.render.PanelCellEditorRenderer;
import restaurantes.render.PanelTableModel;

public class ContainerPanel extends javax.swing.JPanel {

    private JTable CompTable = null;
    private PanelTableModel CompModel = null;
    
    public ContainerPanel() {
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
        
        JScrollPane CompTableScrollpane = new JScrollPane(CompTable);

        this.containerPanel.add(CompTableScrollpane, BorderLayout.CENTER);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        restaurantPanel = new javax.swing.JPanel();
        foodsButton = new javax.swing.JButton();
        optionsLabel = new javax.swing.JLabel();
        restaurantButton = new javax.swing.JButton();
        collaboratorsButton = new javax.swing.JButton();
        commentsButton = new javax.swing.JButton();
        othersButton = new javax.swing.JButton();
        containerPanel = new javax.swing.JPanel();

        setBackground(new java.awt.Color(153, 107, 66));

        restaurantPanel.setBackground(new java.awt.Color(153, 107, 66));
        restaurantPanel.setPreferredSize(new java.awt.Dimension(880, 500));

        foodsButton.setBackground(new java.awt.Color(153, 107, 66));
        foodsButton.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        foodsButton.setForeground(new java.awt.Color(255, 255, 255));
        foodsButton.setText("Platillos");

        optionsLabel.setBackground(new java.awt.Color(153, 107, 66));
        optionsLabel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        optionsLabel.setForeground(new java.awt.Color(255, 255, 255));
        optionsLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        optionsLabel.setText("Opciones");

        restaurantButton.setBackground(new java.awt.Color(153, 107, 66));
        restaurantButton.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        restaurantButton.setForeground(new java.awt.Color(255, 255, 255));
        restaurantButton.setText("Restaurantes");

        collaboratorsButton.setBackground(new java.awt.Color(153, 107, 66));
        collaboratorsButton.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        collaboratorsButton.setForeground(new java.awt.Color(255, 255, 255));
        collaboratorsButton.setText("Colaboradores");

        commentsButton.setBackground(new java.awt.Color(153, 107, 66));
        commentsButton.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        commentsButton.setForeground(new java.awt.Color(255, 255, 255));
        commentsButton.setText("Comentarios");

        othersButton.setBackground(new java.awt.Color(153, 107, 66));
        othersButton.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        othersButton.setForeground(new java.awt.Color(255, 255, 255));
        othersButton.setText("Otros");

        javax.swing.GroupLayout restaurantPanelLayout = new javax.swing.GroupLayout(restaurantPanel);
        restaurantPanel.setLayout(restaurantPanelLayout);
        restaurantPanelLayout.setHorizontalGroup(
            restaurantPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(restaurantPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(restaurantPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(optionsLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(foodsButton, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(restaurantButton, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(collaboratorsButton, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(commentsButton, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(othersButton, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        restaurantPanelLayout.setVerticalGroup(
            restaurantPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(restaurantPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(optionsLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(111, 111, 111)
                .addComponent(restaurantButton)
                .addGap(18, 18, 18)
                .addComponent(foodsButton)
                .addGap(18, 18, 18)
                .addComponent(collaboratorsButton)
                .addGap(18, 18, 18)
                .addComponent(commentsButton)
                .addGap(18, 18, 18)
                .addComponent(othersButton)
                .addContainerGap(121, Short.MAX_VALUE))
        );

        containerPanel.setBackground(new java.awt.Color(153, 107, 66));
        containerPanel.setLayout(new java.awt.GridLayout());

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(restaurantPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(containerPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 673, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(restaurantPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addComponent(containerPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton collaboratorsButton;
    public javax.swing.JButton commentsButton;
    public javax.swing.JPanel containerPanel;
    public javax.swing.JButton foodsButton;
    private javax.swing.JLabel optionsLabel;
    public javax.swing.JButton othersButton;
    public javax.swing.JButton restaurantButton;
    public javax.swing.JPanel restaurantPanel;
    // End of variables declaration//GEN-END:variables
}
