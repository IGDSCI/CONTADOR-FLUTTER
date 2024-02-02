import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int cont = 0;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Primeiro programa'),
        ),
      body: Center(
          child: Text('Contador: $cont', 
          style: TextStyle(fontSize: 20.0, color: color),
          ), 
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () { 
          setState(() {
                cont = cont + 1;
                if (isEven(cont)){
                  color = Colors.red;
                } else {
                  color = Colors.green;
                }
              });
         },),
    );
  }
}

bool isEven(int number){
  if (number % 2 == 0){
    return true;
  } else {
    return false;
  }
}