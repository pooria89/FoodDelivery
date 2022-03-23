import 'package:flutter/material.dart';
import 'package:food/src/widget/home_top_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: [HomeTopInfo()],
      ),
    );
  }
}
