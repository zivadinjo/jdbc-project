package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class P03_MetaDataTest {

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
        ResultSet rs = statement.executeQuery("select * from employees" );

        //Database MetData --> information about database
        DatabaseMetaData databaseMetaData = conn.getMetaData();

        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());

        //We are not use metadata for testing,just for information purpose

        //ResultSetMetData -- Data about table
        ResultSetMetaData rsmd = rs.getMetaData();

        //How many column we have
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);

        //what is the name of 5th column
        //System.out.println(rsmd.getColumnName(5));// returns column with provided index

        //PRINT ALL COLUMN NAME DYNAMICALLY
        List<String> columnNames = new ArrayList<>();
        for (int i = 1; i <= columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
            columnNames.add(rsmd.getColumnName(i));
        }

        System.out.println(columnNames);

         /*

        - HOW TO GET DATA DYNAMICLY

           Resultset --> Table Content

                rs.next()          --> with while loop we are getting data from all table.
                                        It will jump to each row toget data
                rs.getString(index) --> To get related cell content
                rs.getString(columname)

           ResultsetMetadata -->Info about table

                rsmd.getColumnCount() --> it will return columnCount
                rsmd.getColumnName(index) --> it will give provided index ColumnName


         */

        // PRINT ALL TABLE CONTENT DYNAMICLY

        // iterate each row with while loop
        while(rs.next()){

            //iterate each column dynamicly
            for (int i = 1; i <=rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+" ");

            }
            System.out.println();
        }







        //close conn
        rs.close();
        statement.close();
        conn.close();

    }
}
