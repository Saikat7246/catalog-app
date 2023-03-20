import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      );
  // darkTheme: ThemeData(
  //   brightness: Brightness.dark,
  // ),

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        //appBarTheme: AppBarTheme(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      );
}
