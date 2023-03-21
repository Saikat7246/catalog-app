import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice2/models/catalog.dart';
import 'package:practice2/widgets/Drawer.dart';
import 'package:practice2/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

@override

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final dataJson = await rootBundle.loadString("assets/files/data.json");
    final decodeData = jsonDecode(dataJson);
    var productData = decodeData["products"];
    print(productData);
  }

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
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemWidget(item: CatalogModel.products[index]);
            },
            itemCount: CatalogModel.products.length,
          ),
        ));
  }
}
