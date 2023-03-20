import 'package:flutter/material.dart';

import 'package:practice2/screens/home_page.dart';
import 'package:practice2/screens/login_page.dart';
import 'package:practice2/signin.dart';
import 'package:practice2/utils/myroutes.dart';
import 'package:practice2/widgets/themes.dart';
// import 'package:google_fonts/google_fonts.dart';

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

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      // MyTheme.lightTheme(context),
      // highContrastDarkTheme: MyTheme.darkTheme(context),

      // theme: ThemeData(
      //   primarySwatch: Colors.purple,
      // ),
      home: LoginPage(),
      //SignIn(),
      // MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.LoginRoutes: (context) => LoginPage(),
      },
    );
  }
}
