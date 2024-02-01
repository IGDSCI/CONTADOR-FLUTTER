import 'package:flutter/material.dart';

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
          child: Text('Contador: $cont', 
          style: const TextStyle(fontSize: 20.0),
          ), 
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () { 
          setState(() {
                cont = cont + 1;
              });
         },),
    );
  }
}