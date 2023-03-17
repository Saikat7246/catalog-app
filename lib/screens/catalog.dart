import 'package:flutter/material.dart';
import 'package:practice2/widgets/Drawer.dart';

class CatalogApp extends StatefulWidget {
  const CatalogApp({Key? key}) : super(key: key);

  @override
  State<CatalogApp> createState() => _CatalogAppState();
}

class _CatalogAppState extends State<CatalogApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
