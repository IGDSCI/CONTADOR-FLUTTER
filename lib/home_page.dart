import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controlle.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Primeiro programa'),
        ),
      body: Center(
        child: Switch(
          value: appController.instance.dartTheme, 
          onChanged: (value) {
            appController.instance.changeTheme();
          }),
      )
    );
  }
}

