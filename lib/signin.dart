import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice2/utils/colorvar.dart';
class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(gradient: bg1),
      child: Scaffold(
        backgroundColor: Color(0x00000),
        appBar: AppBar(
          backgroundColor: Color(0x00000),
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.arrow_back,
            color: Colors.white,
            )
            ),
        ),
        body: Form(
          child: Column(
            children: [
              Container(
                height: h,
                width: w,
                margin: const EdgeInsets.only(top: 50.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                  color: Colors.white,
                ),
                child: Column(
                  children:const [ 

                    SizedBox(
                      height: 25.0,
                    ),
                  Text(
                    'Sign In',
                    style: TextStyle(fontFamily: 'Roboto' ,fontSize: 30,fontWeight: FontWeight.w900),
                  ),
                  Text(
                    '\n Sign In with your Email & Password \n',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ],
                ),
              ),
              
            ],
          ),
          ),
      ),
    );
  }
}