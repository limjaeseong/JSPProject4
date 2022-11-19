package com.member.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://walab.handong.edu:3306/p1_22100619", "p1_22100619", "aowe3lei7N");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}