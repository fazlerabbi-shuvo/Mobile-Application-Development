import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app/bottomNavigationBarPart.dart';
import 'package:medical_app/splashscreen.dart';
import 'package:medical_app/tabarpages/dentistdetails.dart';
import 'package:medical_app/tabarpages/heartspecialist.dart';
import 'package:medical_app/homepage.dart';
import 'package:medical_app/page2.dart';
import 'package:medical_app/page3.dart';
import 'package:medical_app/tabarpages/heartspecialistdetails.dart';
import 'package:medical_app/tabarpages/immunologistdetails.dart';
import 'package:medical_app/tabarpages/neurologistdetails.dart';
import 'package:medical_app/tabarpages/psychologistdetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.grey.withOpacity(0.4,)
      ),
    );
    return MaterialApp(
      routes: {
        // When navigating to the "secondScreen" route, build the SecondScreen widget.
        'heartdetails': (context) => HeartSpecialistDetails(),
        'psychodetails': (context) => PsychologistDetails(),
        'neurodetails': (context) => NeurologistDetails(),
        'immunodetails': (context) => ImmunologistDetails(),
        'dentistdetails': (context) => DentistDetails(),
      },
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      //home: Page1(),
      //home: Page3(),
      //home: BottomNavigationBarPart(),
      home: SplashScreen(),
    );
  }
}
