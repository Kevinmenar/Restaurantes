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
public class GoodFor extends javax.swing.JPanel {

    /**
     * Creates new form GoodFor
     */
    public GoodFor() {
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

        goodForLabel = new javax.swing.JLabel();
        goodForOutputLabel = new javax.swing.JLabel();

        setBackground(new java.awt.Color(153, 107, 66));

        goodForLabel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        goodForLabel.setForeground(new java.awt.Color(255, 255, 255));
        goodForLabel.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        goodForLabel.setText("Bueno para:");

        goodForOutputLabel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        goodForOutputLabel.setForeground(new java.awt.Color(255, 255, 255));
        goodForOutputLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(71, 71, 71)
                .addComponent(goodForLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(goodForOutputLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 420, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(71, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(goodForOutputLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(goodForLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel goodForLabel;
    private javax.swing.JLabel goodForOutputLabel;
    // End of variables declaration//GEN-END:variables
}
