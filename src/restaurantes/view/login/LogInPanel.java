package restaurantes.view.login;

public class LogInPanel extends javax.swing.JPanel {

    public LogInPanel() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        TittleLabel = new javax.swing.JLabel();
        userLabel = new javax.swing.JLabel();
        userTextField = new javax.swing.JTextField();
        ingresarButton = new javax.swing.JButton();
        restaurantImage = new javax.swing.JLabel();

        setBackground(new java.awt.Color(153, 107, 66));

        TittleLabel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        TittleLabel.setForeground(new java.awt.Color(255, 255, 255));
        TittleLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        TittleLabel.setText("Restaurantes");

        userLabel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        userLabel.setForeground(new java.awt.Color(255, 255, 255));
        userLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        userLabel.setText("Usuario");

        userTextField.setBackground(new java.awt.Color(222, 184, 135));
        userTextField.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        userTextField.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        userTextField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                userTextFieldActionPerformed(evt);
            }
        });

        ingresarButton.setBackground(new java.awt.Color(153, 107, 66));
        ingresarButton.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        ingresarButton.setForeground(new java.awt.Color(255, 255, 255));
        ingresarButton.setText("Ingresar");

        restaurantImage.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/Restaurante.jpg"))); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(TittleLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(userLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(userTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ingresarButton, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(690, Short.MAX_VALUE))
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 200, Short.MAX_VALUE)
                    .addComponent(restaurantImage)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addComponent(TittleLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(131, 131, 131)
                .addComponent(userLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(userTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(ingresarButton, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(186, Short.MAX_VALUE))
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addComponent(restaurantImage)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void userTextFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_userTextFieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_userTextFieldActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel TittleLabel;
    public javax.swing.JButton ingresarButton;
    private javax.swing.JLabel restaurantImage;
    private javax.swing.JLabel userLabel;
    private javax.swing.JTextField userTextField;
    // End of variables declaration//GEN-END:variables
}
