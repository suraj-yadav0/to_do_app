import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool value = false;
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
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Tasks",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.grey)),
            child: Center(
                child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            )),
          ),
          const Text("Add List"),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 500,
            width: 150,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.red,
              elevation: 10,
              child: Column(children: [
                const Text(
                  "My Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
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
                      value: value,
                      onChanged: (bool? value) {
                        setState(() {
                          value = value!;
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
                      value: value,
                      onChanged: (bool? value) {
                        setState(() {
                          value = value!;
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
                      value: value,
                      onChanged: (bool? value) {
                        setState(() {
                          value = value!;
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
                      value: value,
                      onChanged: (bool? value) {
                        setState(() {
                          value = value!;
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
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
