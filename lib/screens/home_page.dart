//
// Import LIBRARIES
import 'package:flutter/material.dart';
// Import FILES
import '../screens/header.dart';
//

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        children: <Widget>[
          //Header
          Header(),
          // Slider
        ],
      ),
    );
  }
}
