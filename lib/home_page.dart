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
        actions: [CustomSwitch()],
        ),
        body: const Center(
          child: Text (
            'Boa tarde!'
            )),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
            value: appController.instance.dartTheme, 
            onChanged: (value) {
              appController.instance.changeTheme();
          },);
  }
}