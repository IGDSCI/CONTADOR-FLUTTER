import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controlle.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appController.instance,
      builder: (animation, builder){
        return MaterialApp(
          theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: appController.instance.dartTheme ? Brightness.dark : Brightness.light
        ),
      home: HomePage(),
    );
    }
    );
  }
}

