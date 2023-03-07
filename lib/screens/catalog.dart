import 'package:flutter/material.dart';

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
      ),
      drawer: Drawer(
        child: Text('data'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
