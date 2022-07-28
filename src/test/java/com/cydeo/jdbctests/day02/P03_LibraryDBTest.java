package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P03_LibraryDBTest {

    //Create conn to MySQL DB
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY" ;


    @Test
    public void testUserCount() {

        //Create a conn
        DB_Util.createConnection(url,username,password);


        // Run your query
        DB_Util.runQuery("select count(*) from users");

        // get how many user we have from DB
        String expectedCount = DB_Util.getCellValue(1, 1);
        System.out.println(expectedCount);

        // get How many user we have from UI

        /*

        we need to implement UI steps to get data from UI manually

         */

        String actualCount="267";



        // Make an assertion
        Assertions.assertEquals(expectedCount,actualCount);

        // Close conn

        DB_Util.destroy();

    }


    @Test
    public void testBookCount() {

        //Create conn
        DB_Util.createConnection(url,username,password);


        //Run query
        DB_Util.runQuery("select count(*) from books");


        //Get how many book we have from database
        String expectedCount = DB_Util.getCellValue(1, 1);
        System.out.println(expectedCount);


        //Get how many book we have from UI
        String actualCount="1403";



        //Make an assertion
        Assertions.assertEquals(expectedCount,actualCount);



        //Close connection
        DB_Util.destroy();

    }
}
