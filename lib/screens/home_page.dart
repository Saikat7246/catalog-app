import 'package:flutter/material.dart';
import 'package:practice2/widgets/Drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
