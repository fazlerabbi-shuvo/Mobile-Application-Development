import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:medical_app/homepage.dart';
import 'package:medical_app/page3.dart';
class VideoCallingSplash extends StatefulWidget {
  const VideoCallingSplash({Key? key}) : super(key: key);

  @override
  State<VideoCallingSplash> createState() => _VideoCallingSplashState();
}

class _VideoCallingSplashState extends State<VideoCallingSplash> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Page3()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 30,),
          CircleAvatar(
              radius: 90,
              backgroundColor: Color(0xff0957DF),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80, child: Image.asset('images/splash.png'))),
          SizedBox(height: 30,),
          SpinKitCircle(
            color: Color(0xff0957DF),
            size: 50.0,
          ),
          SizedBox(height: 30,),

          Text('Waiting For Doctor...',style: myFont(18, Colors.black),),
        ],
      ),
    );
  }
}
