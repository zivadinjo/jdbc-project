package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUtilPractice {

    @Test
    public void task1(){

        //create DB connection
        DB_Util.createConnection();


        //run query
        DB_Util.runQuery("select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES");

        //Get all data as list of methods
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String,String> eachRowMap : allRowAsListOfMap){
            System.out.println(eachRowMap);
        }

        //Get Steven
        System.out.println(DB_Util.getFirstRowFirstColumn());


        //destroy-close conn
        DB_Util.destroy();

    }

}
