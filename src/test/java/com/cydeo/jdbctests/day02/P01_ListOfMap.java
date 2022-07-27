package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.*;

public class P01_ListOfMap {

    String dbUrl = "jdbc:oracle:thin:@54.91.133.234:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {



        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put("FIRST_NAME","Steven");
        rowMap1.put("LAST_NAME","King");
        rowMap1.put("SALARY",24000);

        System.out.println(rowMap1);

        System.out.println("=======ROWMAP2======");

        Map<String, Object> rowMap2 = new HashMap<>();
        rowMap2.put("FIRST_NAME","Neena");
        rowMap2.put("LAST_NAME","Kocchar");
        rowMap2.put("SALARY",17000);

        System.out.println(rowMap2);

        /*

        add logic that will continue all the way down

         */

        //List of data
        List<Map<String,Object>> dataList= new ArrayList<>();
        dataList.add(rowMap1);
        dataList.add(rowMap2);

        //Give me last name of Steven
        System.out.println(dataList.get(0).get("LAST_NAME"));




    }

    @Test
    public void task2() throws SQLException {

        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name// table data
        ResultSet rs = statement.executeQuery("select first_name,last_name,salary from employees where rownum<6" );
        ResultSetMetaData rsmd = rs.getMetaData();//column reader


        rs.next();//getting next row

        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put(rsmd.getColumnName(1),rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2),rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3),rs.getInt(3));

        System.out.println(rowMap1);

        System.out.println("=======ROWMAP2======");

        rs.next();

        Map<String, Object> rowMap2 = new HashMap<>();
        rowMap2.put(rsmd.getColumnName(1),rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2),rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3),rs.getString(3));

        System.out.println(rowMap2);

        /*

        add logic that will continue all the way down

         */

        //List of data
        List<Map<String,Object>> dataList= new ArrayList<>();
        dataList.add(rowMap1);
        dataList.add(rowMap2);

        //Give me last name of Steven
        System.out.println(dataList.get(0).get(rsmd.getColumnName(2)));

        //PRINT ALL MAPS FROM THE LIST
        System.out.println("========ALL THE MAPS FROM THE LIST");

        List<Map<String,Object>> list=new ArrayList<>();
        for (Map<String, Object> eachRowMap : dataList) {
            System.out.println(eachRowMap);
        }


        //close conn
        rs.close();
        statement.close();
        conn.close();
    }

}
