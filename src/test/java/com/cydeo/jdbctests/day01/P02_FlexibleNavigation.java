package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {

    String dbUrl = "jdbc:oracle:thin:@54.91.133.234:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {


        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select first_name,last_name from employees" );

        //first row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        //second row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        //last row--> we can not use directly we need to add parameter in order to work
        //ResultSet.TYPE_SCROLL_INSENSITIVE --> to be able to scroll your cursor dynamically to specific row
        // ResultSet.CONCUR_READ_ONLY -->we are saying that we'll not update anything in data base
        rs.last();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        //getRow() --> retrieve the current row
        System.out.println("============Get Row==========");
        int row = rs.getRow();
        System.out.println(row);

        //jump to row 10 --> absolute gives option to tpe int number as row
        System.out.println("==========ABSOLUTE========");
        rs.absolute(10);
        System.out.println(rs.getString(1)+" "+rs.getString(2));
        System.out.println(rs.getRow());

        //previous
        System.out.println("===========PREVIOUS============");
        rs.previous();
        System.out.println(rs.getString(1)+" "+rs.getString(2));
        System.out.println(rs.getRow());//9

        System.out.println("=======PRINT ALL TABLE DYNAMICALLY");

        //in the position to get first row
        rs.beforeFirst();
        //getting table dynamically
        while (rs.next()){
        System.out.println(rs.getRow()+"-"+rs.getString(1)+" "+rs.getString(2));
        }





        //close conn
        rs.close();
        statement.close();
        conn.close();

    }

}
