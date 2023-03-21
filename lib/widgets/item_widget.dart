import 'package:flutter/material.dart';
import 'package:practice2/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.title} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.title),
        subtitle: Text(item.description),
        trailing: Text(
          "\$${item.price.toString()}",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
