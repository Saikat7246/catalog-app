import 'package:flutter/material.dart';
import 'package:practice2/screens/catalog.dart';
import 'package:practice2/screens/login_page.dart';
import 'package:practice2/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      // home: CatalogApp(),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(brightness: Brightness.dark),
      //SignIn(),
      // MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/home",
      routes: {
        "/home": (context) => CatalogApp(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
