import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(child: Text("This app was built by me Suraj Yadav, as a task for a internship. Hopefullly I will get Selected.",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),),
    ),);
  }
}