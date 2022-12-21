import 'package:flutter/material.dart';
import 'package:weatherapp/homepage.dart';
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('App Is Under Construction',style: myFont(18, Colors.red),),),
    );
  }
}
