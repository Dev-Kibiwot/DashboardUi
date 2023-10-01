// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project1/bar%20graph/bar-graph.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary =[
      30.5,
      60.5,
      80.5,
      40.40,
      50.50,
      55.5,      
      78.86,
      70.86,
      15.40,
      34.50,
      65.5,      
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 89, 197),
      body:SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_open_sharp,
                    color: Colors.white,
                  ),
                  Text(
                    "Dashboard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/lv.jpg"),
                      ),
                      Positioned(
                        left: 27,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 4.5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height* 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1
              ),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,      
                      blurRadius: 1,
                      spreadRadius: 3,
                      offset: Offset(0, -4)
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(                            
                          alignment:Alignment.topLeft,
                           child:Text("Average Time")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "05:28",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      SizedBox(
                      height: 250,
                      child: BarGraph(weeklySummery: weeklySummary)),
                      SizedBox(height: 2,),
                       Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "DASHBOARD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ),
                      SizedBox(height: 20,),
                      Text(
                        "Shop our Must-Loved Brach",
                        style: TextStyle(
                          color: Colors.black45
                        ),
                      ),
                      Text(
                        "Big Discounts and Bigger Savings App.",
                        style: TextStyle(
                          color: Colors.black45
                        ),
                      ),
                      SizedBox(height: 20,),                     
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 117, 138, 232),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 1,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.dashboard,
                    color: Colors.white,
                  ),
                ),
              ),
              Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.purple.shade300,
                  ),
                ),
              ),
              Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.purple.shade300,
                  ),
                ),
              ),
              Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.auto_graph_sharp,
                    color: Colors.purple.shade300,
                  ),
                ),
              ),
              Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.person,
                    color: Colors.purple.shade300,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
