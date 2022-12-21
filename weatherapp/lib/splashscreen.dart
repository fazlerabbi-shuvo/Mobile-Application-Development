import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherapp/bottomnavigationbarpart.dart';
import 'package:weatherapp/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => BottomNavigationBarPart()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D388a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(10),
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('images/splash1.gif')),
          ),
          SpinKitCubeGrid(
            color: Colors.amber,
            size: 100.0,
          ),
          SizedBox(height: 30,),

          Text('Design and Developed By:',style: myFont(14, Colors.black),),
          Text('Fazle Rabbi',style: myFont(18, Colors.white,FontWeight.bold),),
        ],
      ),
    );
  }
}
