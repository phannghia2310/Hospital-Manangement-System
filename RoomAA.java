
import java.sql.Connection; //Là mot Interface voi tất ca các method cho viec liên lac voi database. Nó mô ta noi dung liên lac. tất ca các thông tin liên lac voi co so du lieu là thông qua chi có đối tuong Connection.
import java.sql.DriverManager; //Là mot class, nó dùng đe quan lý danh sách các Driver (database drivers). 
import java.sql.PreparedStatement; // xác đinh các phuong thuc cho phép gui các lenh SQL và nhan du lieu tu co so du lieu
import java.sql.ResultSet; //đai dien cho tap hop các ban ghi lấy do thuc hien truy vấn.
import java.sql.ResultSetMetaData; //đuoc su dung đe lấy ra các metadata tu đối tuong ResultSet
import java.sql.SQLException; //class này xu lý bất cu lỗi nào xuất hien trong khi làm viec voi Database.
import java.util.Vector; //là mot lop thuc thi mot mang đong
import java.util.logging.Level; //cap do ghi nhat ky
import java.util.logging.Logger; //cung cấp phuong thuc đe khai thác viết nhat ký
import javax.swing.JOptionPane; //là mot thành phần cung cấp các phuong thuc chuan đe goi mot hop thoai dialog chuan cho mot giá tri hoac thông báo nguoi dùng về mot cái gì đó
import javax.swing.table.DefaultTableModel; //luu tru du lieu cho JTable trong mot > Vector > Vectors
import java.sql.Statement; //cung cấp các phuong thuc đe thuc thi các câu lenh truy vấn voi co so du lieu SQL

public class RoomAA extends javax.swing.JFrame {

    public RoomAA() {
        initComponents();
        Connect();
        Load_Room();
    }
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    String pid;
    String pname;
    String rid;
    
    public RoomAA(String pid1,String pname1) {
        initComponents();
        Connect();
        Load_Room();
        this.pid = pid1;
        PID.setText(pid);
        
        this.pname = pname1;
        PName.setText(pname);
        
        RID.setText("");
        
        jButton5.setEnabled(false);
        
    }
    
    public RoomAA(String pid1,String pname1,String rid1) {
        initComponents();
        Connect();
        Load_Room();
        this.pid = pid1;
        PID.setText(pid);
        
        this.pname = pname1;
        PName.setText(pname);
        
        this.rid = rid1;
        RID.setText(rid);
        jButton2.setEnabled(false);
        
    }

    
    public void Connect()
    {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_db","root","0979014541@pkbn");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CreateUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CreateUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void Load_Room()
    {
        try {
            pst = con.prepareStatement("select * from room");
            rs = pst.executeQuery();
            ResultSetMetaData rsm = rs.getMetaData();
            int c;
            c = rsm.getColumnCount();
            
            DefaultTableModel df = (DefaultTableModel)jTable1.getModel();
            df.setRowCount(0);
            
            while(rs.next())
            {
                Vector v1 = new Vector();
                
                for(int i=1; i<=c; i++)
                {
                    v1.add(rs.getString("Room_ID"));
                    v1.add(rs.getString("Room_Type"));
                    v1.add(rs.getString("Room_Status"));
                }
                df.addRow(v1);
            }
                    
            } catch (SQLException ex) {
            Logger.getLogger(CreateAppointment.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        RType = new javax.swing.JComboBox();
        jButton3 = new javax.swing.JButton();
        PID = new javax.swing.JLabel();
        PName = new javax.swing.JLabel();
        jButton5 = new javax.swing.JButton();
        RID = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(47, 186, 219));

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(255, 255, 255));
        jLabel7.setText("Room Allocation/Assignment");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 890, Short.MAX_VALUE)
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel2Layout.createSequentialGroup()
                    .addGap(175, 175, 175)
                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 540, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(175, Short.MAX_VALUE)))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 80, Short.MAX_VALUE)
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel2Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(11, Short.MAX_VALUE)))
        );

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 30, 890, 80));

        jPanel3.setBackground(new java.awt.Color(255, 255, 255));

        jLabel2.setText("Patient ID");

        jLabel3.setText("Patient Name");

        jLabel4.setText("Room Type");

        jLabel5.setText("Room ID");

        jButton2.setText("Assign Room");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton4.setText("Back to Patient Records");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        RType.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "General Ward", "ICU", "NICU", "PICU", "Long Term ICU", "Operation Theater" }));

        jButton3.setText("Search");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        PID.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        PID.setText("jLabel8");

        PName.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        PName.setText("jLabel8");

        jButton5.setText("Deallocate Room");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        RID.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        RID.setText("jLabel8");

        jLabel8.setText("Click an unassigned room to assign to patient");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(23, 23, 23)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(jButton2, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGroup(jPanel3Layout.createSequentialGroup()
                                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                                        .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(jPanel3Layout.createSequentialGroup()
                                            .addGap(16, 16, 16)
                                            .addComponent(PID, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGroup(jPanel3Layout.createSequentialGroup()
                                            .addGap(18, 18, 18)
                                            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addComponent(PName, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                    .addGroup(jPanel3Layout.createSequentialGroup()
                                                        .addComponent(RType, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                        .addGap(18, 18, 18)
                                                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                    .addComponent(RID, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)))))))
                            .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 276, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(117, 117, 117)
                        .addComponent(jButton4)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(45, 45, 45)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(PID))
                .addGap(21, 21, 21)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(PName))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(RType, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton3))
                .addGap(21, 21, 21)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(RID))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 73, Short.MAX_VALUE)
                .addComponent(jLabel8)
                .addGap(26, 26, 26)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton5)
                    .addComponent(jButton2))
                .addGap(18, 18, 18)
                .addComponent(jButton4)
                .addGap(31, 31, 31))
        );

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 140, 380, 380));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Room ID", "Room Type", "Status"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(jTable1);

        getContentPane().add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 140, 430, 380));

        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\Users\\phank\\Dropbox\\My PC (LAPTOP-JFRPFKNN)\\Downloads\\Hospital-Database-System (2)\\Hospital-Database-System\\Hospital-Database-System-master\\SourceCode\\src\\image\\room.jpg")); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 890, 570));

        setSize(new java.awt.Dimension(902, 607));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        String pat_id = PID.getText();
        String pat_name = PName.getText();
        String rid = RID.getText();
        String rtype = RType.getSelectedItem().toString();

        try {

            pst = con.prepareStatement("select * from room_patient where Patient_ID = ?");
            pst.setString(1, pat_id);

            rs = pst.executeQuery();
            if (rs.next()){
                String oldroom = rs.getString("Room_ID");
                pst = con.prepareStatement("update room set Room_Status=? where Room_ID = ?");
                pst.setString(1, "Unassigned");
                pst.setString(2, oldroom);

                pst.executeUpdate();

                pst = con.prepareStatement("update room_patient set Room_ID=? where Patient_ID = ?");
                pst.setString(1, rid);
                pst.setString(2, pat_id);

                pst.executeUpdate();
                JOptionPane.showMessageDialog(this, "Room assignment updated sucessfully");
            }
            else{
                pst = con.prepareStatement("insert into room_patient(Patient_ID,Room_ID)values(?,?)");
                pst.setString(1, pat_id);
                pst.setString(2, rid);

                pst.executeUpdate();
                JOptionPane.showMessageDialog(this, "Room assigned Sucessfully");

            }
            pst = con.prepareStatement("update room set Room_Status=? where Room_ID = ?");
            pst.setString(1, "Assigned");
            pst.setString(2, rid);

            pst.executeUpdate();

            Load_Room();
            jButton2.setEnabled(false);

        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
        this.setVisible(false);
        ViewPatientRecords v = new ViewPatientRecords();
        v.setVisible(true);
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        String rtype = RType.getSelectedItem().toString();

        try {

            pst = con.prepareStatement("select * FROM room WHERE Room_Type = ? and Room_Status = ?");
            pst.setString(1, rtype);
            pst.setString(2, "Unassigned");

            rs = pst.executeQuery();
            ResultSetMetaData rsm = rs.getMetaData();

            int c;
            c = rsm.getColumnCount();
            DefaultTableModel df = (DefaultTableModel)jTable1.getModel();
            df.setRowCount(0);

            while(rs.next())
            {
                Vector v1 = new Vector();

                for(int i=1; i<=c; i++)
                {
                    v1.add(rs.getString("Room_ID"));
                    v1.add(rs.getString("Room_Type"));
                    v1.add(rs.getString("Room_Status"));

                }
                df.addRow(v1);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        // TODO add your handling code here:
        String pat_id = PID.getText();
        String pat_name = PName.getText();
        String rid = RID.getText();

        try {
            pst = con.prepareStatement("update room set Room_Status=? where Room_ID = ?");
            pst.setString(1, "Unassigned");
            pst.setString(2, rid);

            pst.executeUpdate();

            JOptionPane.showMessageDialog(this, "Room deallocated Sucessfully");

            pst = con.prepareStatement("delete from room_patient where Room_ID=?");
            pst.setString(1, rid);

            pst.executeUpdate();

            Load_Room();
            jButton5.setEnabled(false);

        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
        DefaultTableModel d1 = (DefaultTableModel)jTable1.getModel();
        int SelectIndex = jTable1.getSelectedRow();
        if (d1.getValueAt(SelectIndex, 2).toString().equals("Assigned")){
            JOptionPane.showMessageDialog(this, "This room has already been assigned. Please choose another room");
            jButton2.setEnabled(false);
        }
        else{
            RID.setText(d1.getValueAt(SelectIndex, 0).toString());
            RType.setSelectedItem(d1.getValueAt(SelectIndex, 1).toString());
            jButton2.setEnabled(true);
        }
    }//GEN-LAST:event_jTable1MouseClicked

    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(CreateAppointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CreateAppointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CreateAppointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CreateAppointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CreateAppointment().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel PID;
    private javax.swing.JLabel PName;
    private javax.swing.JLabel RID;
    private javax.swing.JComboBox RType;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
