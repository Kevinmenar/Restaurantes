/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restaurantes.view.restaurant.restaurants;

/**
 *
 * @author kemendez
 */
public class Evento extends javax.swing.JPanel {

    /**
     * Creates new form Evento
     */
    public Evento() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        addButton = new javax.swing.JButton();
        eventLabel = new javax.swing.JLabel();
        eventOutputLabel = new javax.swing.JLabel();
        addButton1 = new javax.swing.JButton();

        addButton.setBackground(new java.awt.Color(153, 107, 66));
        addButton.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        addButton.setForeground(new java.awt.Color(255, 255, 255));
        addButton.setText("Agregar");
        addButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addButtonActionPerformed(evt);
            }
        });

        setBackground(new java.awt.Color(153, 107, 66));

        eventLabel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        eventLabel.setForeground(new java.awt.Color(255, 255, 255));
        eventLabel.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        eventLabel.setText("Evento");

        eventOutputLabel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        eventOutputLabel.setForeground(new java.awt.Color(255, 255, 255));
        eventOutputLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        addButton1.setBackground(new java.awt.Color(153, 107, 66));
        addButton1.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        addButton1.setForeground(new java.awt.Color(255, 255, 255));
        addButton1.setText("Agregar");
        addButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(50, 50, 50)
                .addComponent(eventLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(eventOutputLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 300, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(addButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(52, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(addButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(eventOutputLabel, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(eventLabel, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void addButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addButtonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_addButtonActionPerformed

    private void addButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addButton1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_addButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton addButton;
    public javax.swing.JButton addButton1;
    private javax.swing.JLabel eventLabel;
    private javax.swing.JLabel eventOutputLabel;
    // End of variables declaration//GEN-END:variables
}
