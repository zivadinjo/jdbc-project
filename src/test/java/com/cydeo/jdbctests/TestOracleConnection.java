package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        /*

        ALT + ENTER --> Introduce local variable

         */

        String dbUrl = "jdbc:oracle:thin:@54.91.133.234:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        //DriverManager class getConnection is used to get connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //Statement help us to execute query
        Statement statement = conn.createStatement();

        //ResultSet stores data that we get from query execution
        ResultSet rs = statement.executeQuery("select * from REGIONS");


//        /*
//        How to run query?
//        -Chose query(highlight it)
//        - CTRL+ENTER
//         */
//
//        //next() --> move to cursor in next line
//        rs.next();
//
//        //get.Int(index) will return Int if we have Int value in that column
//        //index starts from 1 with SQL table
//
//        System.out.println(rs.getInt(1));
//        System.out.println(rs.getInt("REGION_ID"));
//
//        //get me region name
//        System.out.println(rs.getString(2));
//        System.out.println(rs.getString("REGION_NAME"));
//
//        //move to the next row
//        rs.next();
//        //2 - AMERICAS
//        System.out.println(rs.getInt("REGION_ID") + "-" + rs.getString("REGION_NAME"));
//
//        //move to the next row
//        rs.next();
//        //3 - Asia
//        System.out.println(rs.getInt("REGION_ID") + "-" + rs.getString("REGION_NAME"));
//
//        //move to the next row
//        rs.next();
//        //4 - Middle East and Africa
//        System.out.println(rs.getInt("REGION_ID") + "-" + rs.getString("REGION_NAME"));


        while(rs.next()){

            System.out.println(rs.getInt("REGION_ID") + "-" + rs.getString("REGION_NAME"));

        }


    }
}
