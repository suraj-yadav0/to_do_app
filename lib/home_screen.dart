import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:to_do_app/info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool chekvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      )),
      body: SingleChildScrollView(
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tasks",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "List",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.grey)),
            child: Center(
                child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            )),
          ),
          const SizedBox(height: 10,),
          const Text("Add List",style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            scrollDirection: Axis.horizontal,
            child: Row(
              
              children: [
                 SizedBox(
              height: 375,
              width: 225,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.indigo,
                elevation: 10,
                child: Column(children: [
                const  Padding(
                    padding:  EdgeInsets.all(15.0),
                    child:  Text(
                      "Trip to Goa",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        
                        checkColor: Colors.white,
                        value: chekvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            chekvalue = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Book Flight",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                      Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: chekvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            chekvalue = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Passport Check",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                      Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: chekvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            chekvalue = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Packing Luggage",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                      Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: chekvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            chekvalue = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Hotel Reservation",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
                  const  SizedBox(width: 15,),
                SizedBox(
                  height: 375,
                  width: 225,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.red,
                    elevation: 10,
                    child: Column(children: [
                    const  Padding(
                        padding:  EdgeInsets.all(15.0),
                        child:  Text(
                          "My Tasks",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            
                            checkColor: Colors.white,
                            value: chekvalue,
                            onChanged: (bool? value) {
                              setState(() {
                                chekvalue = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Buy milk",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                          Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: chekvalue,
                            onChanged: (bool? value) {
                              setState(() {
                                chekvalue = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Plan Weekend",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                          Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: chekvalue,
                            onChanged: (bool? value) {
                              setState(() {
                                chekvalue = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Publish Blog",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                          Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: chekvalue,
                            onChanged: (bool? value) {
                              setState(() {
                                chekvalue = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Run 3 Miles",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: Container(
   
      height: 75.0,
      color: Colors.transparent,
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              // navigate to home page
            },
          ),
        const  Text(
            'Copyright © Your Company 2023',
            style: TextStyle(fontSize: 14.0),
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InfoScreen()));
            },
          ),
        ],
      ),
    ),
    );
  }
}
