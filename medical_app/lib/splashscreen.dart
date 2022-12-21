import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:medical_app/bottomNavigationBarPart.dart';
import 'package:medical_app/homepage.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Assalamualaikum Warahmatullahi Wabarakatuh',style: myFont(18, Color(0xff0957DF),FontWeight.bold),),
          Text('Welcome To Our TeleMedical Services',style: myFont(16, Colors.black,FontWeight.bold),),
          SizedBox(height: 30,),
          CircleAvatar(
              radius: 90,
              backgroundColor: Color(0xff0957DF),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                  radius: 80, child: Image.asset('images/splash.png'))),
          SizedBox(height: 30,),
          SpinKitWave(
            color: Color(0xff0957DF),
            size: 50.0,
          ),
          SizedBox(height: 30,),

          Text('Design and Developed By:',style: myFont(14, Colors.black),),
          Text('Fazle Rabbi - Kazi Fahad - Mahamdul Hasan',style: myFont(16, Color(0xff0957DF),FontWeight.bold),),
        ],
      ),
    );
  }
}
