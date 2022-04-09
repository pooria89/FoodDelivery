import 'package:flutter/material.dart';
import 'package:food/src/screens/main_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: MainScreen(),
    );
  }
}
