package university.management.system;

import java.awt.*;
import javax.swing.*;
import java.sql.*;
import java.awt.event.*;

public class Marks extends JFrame implements ActionListener {
    
    String rollno;
    JButton cancel;
    
    Marks(String rollno) {
        this.rollno = rollno;
        
        setSize(500, 600);
        setLocation(500, 100);
        setLayout(null);
        
        getContentPane().setBackground(Color.white);
        
         ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/download.png"));
        Image i2 = i1.getImage().getScaledInstance(45, 45, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(410, 3, 40, 40);
        add(image);
        
        JLabel heading = new JLabel("Green University of Bangladesh");
        heading.setBounds(50, 10, 500, 25);
        heading.setFont(new Font("Tahoma", Font.BOLD, 22));
        add(heading);
        
        JLabel subheading = new JLabel("Result of Examination 2024");
        subheading.setBounds(105, 50, 500, 20);
        subheading.setFont(new Font("Tahoma", Font.BOLD, 18));
        add(subheading);
        
        JLabel lblrollno = new JLabel("ID Number : " + rollno);
        lblrollno.setBounds(60, 100, 500, 20);
        lblrollno.setFont(new Font("Tahoma", Font.PLAIN, 18));
        add(lblrollno);
        
        JLabel lblsemester = new JLabel();
        lblsemester.setBounds(60, 130, 500, 20);
        lblsemester.setFont(new Font("Tahoma", Font.PLAIN, 18));
        add(lblsemester);
        
        JLabel sub1 = new JLabel();
        sub1.setBounds(100, 200, 500, 20);
        sub1.setFont(new Font("Tahoma", Font.PLAIN, 18));
        add(sub1);
        
        JLabel sub2 = new JLabel();
        sub2.setBounds(100, 230, 500, 20);
        sub2.setFont(new Font("Tahoma", Font.PLAIN, 18));
        add(sub2);
        
        JLabel sub3 = new JLabel();
        sub3.setBounds(100, 260, 500, 20);
        sub3.setFont(new Font("Tahoma", Font.PLAIN, 18));
        add(sub3);
        
        JLabel sub4 = new JLabel();
        sub4.setBounds(100, 290, 500, 20);
        sub4.setFont(new Font("Tahoma", Font.PLAIN, 18));
        add(sub4);
        
        JLabel sub5 = new JLabel();
        sub5.setBounds(100, 320, 500, 20);
        sub5.setFont(new Font("Tahoma", Font.PLAIN, 18));
        add(sub5);
        
           try {
            Conn c = new Conn();
            
            String query = "SELECT subject.rollno, subject.semester, subject.subject1, subject.subject2, subject.subject3, subject.subject4, subject.subject5, " +
                           "marks.marks1, marks.marks2, marks.marks3, marks.marks4, marks.marks5 " +
                           "FROM subject LEFT JOIN marks ON subject.rollno = marks.rollno WHERE subject.rollno = '" + rollno + "'";
            ResultSet rs = c.s.executeQuery(query);
            if (rs.next()) {
                sub1.setText(rs.getString("subject1") + "------------" + rs.getString("marks1"));
                sub2.setText(rs.getString("subject2") + "------------" + rs.getString("marks2"));
                sub3.setText(rs.getString("subject3") + "------------" + rs.getString("marks3"));
                sub4.setText(rs.getString("subject4") + "------------" + rs.getString("marks4"));
                sub5.setText(rs.getString("subject5") + "------------" + rs.getString("marks5"));
                lblsemester.setText("Semester " + rs.getString("semester"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        cancel = new JButton("Back");
        cancel.setBounds(250, 500, 120, 25);
        cancel.setBackground(Color.BLACK);
        cancel.setForeground(Color.WHITE);
        cancel.addActionListener(this);
        cancel.setFont(new Font("Tahoma", Font.BOLD, 15));
        add(cancel);
        
        setVisible(true);
    }
    
    public void actionPerformed(ActionEvent ae) {
        setVisible(false);
    }
    
    public static void main(String[] args) {
        new Marks("");
    }
}
