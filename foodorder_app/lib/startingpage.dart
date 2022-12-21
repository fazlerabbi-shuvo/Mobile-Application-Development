import 'package:flutter/material.dart';
import 'package:foodorder_app/bottomnavbarpart.dart';
import 'package:google_fonts/google_fonts.dart';
class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff272B3B),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delicius food!',style: myFontStyle(50, Colors.white,FontWeight.bold),),
              SizedBox(height: 30,),
              Text('Delivery food in your phone',style: myFontStyle(16, Colors.white),),
              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),

              MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BottomNavigatorExample(title: 'FoodApp')));
              },
                child: Text('Get Started',style: myFontStyle(18, Colors.white,FontWeight.bold),),
                color: Color(0xffF87B36),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
              )
            ],
          ),
          ),
            Positioned(
              top: 20,
              left: -62,
              child: Image.asset('images/start.png',height:MediaQuery.of(context).size.height*0.70,width: 500,),
            )
          ]
        ),
      );
  }
}

myFontStyle(double fsize,Color color,[FontWeight?fw]){
  return GoogleFonts.signika(
    fontSize: fsize,
    color: color,
    fontWeight: fw,
  );
}
