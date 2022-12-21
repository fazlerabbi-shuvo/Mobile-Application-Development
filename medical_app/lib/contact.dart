import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/bottomNavigationBarPart.dart';
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: IconButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>BottomNavigationBarPart()));
                    }, icon: Icon(Icons.arrow_back_ios)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.mail)),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text(
                'Desigened and Developed By',
                style: style(28, Colors.black, FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 230,
                //flex: 1,
                child: Container(
                  //height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff0957DF), width: 5),
                        //color: Colors.yellow,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                // border: Border.all(
                                //     color: Color(0xff000000), width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff0957DF).withOpacity(.1)),
                              child: Image.asset(
                                'images/m0.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fazle Rabbi',
                                    style: style(
                                        20, Colors.black, FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'SEIP ID: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        '320226 ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Batch: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        '05 ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Email: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        'frs.cse@gmail.com ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Department of CSE',
                                    style: style(
                                      15,
                                      Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Green University of Bangladesh',
                                    style: style(
                                        15, Colors.black, FontWeight.bold),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                //flex: 1,
                height: 250,
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff0957DF), width: 5),
                        //color: Colors.yellow,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                // border: Border.all(
                                //     color: Color(0xff000000), width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff0957DF).withOpacity(.1)),
                              child: Image.asset(
                                'images/m1.png',
                                //fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kazi Fahad',
                                    style: style(
                                        20, Colors.black, FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'SEIP ID: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        '320227 ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Batch: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        '05 ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Email: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        'kfahadd1310@gmail.com ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Department of CSE',
                                    style: style(
                                      15,
                                      Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Green University of Bangladesh',
                                    style: style(
                                        15, Colors.black, FontWeight.bold),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                //flex: 1,
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff0957DF), width: 5),
                        //color: Colors.yellow,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                // border: Border.all(
                                //     color: Color(0xff000000), width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff0957DF).withOpacity(.1)),
                              child: Image.asset(
                                'images/m2.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mahamudul Hasan',
                                    style: style(
                                        20, Colors.black, FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'SEIP ID: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        '317730',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Batch: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        '05 ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Email: ',
                                        style: style(
                                            15, Colors.black, FontWeight.bold),
                                      ),
                                      Text(
                                        'mahamudul@gmail.com ',
                                        style: style(
                                          15,
                                          Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Department of CSE',
                                    style: style(
                                      15,
                                      Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Daffodil International University',
                                    style: style(
                                        15, Colors.black, FontWeight.bold),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

style(double size, Color clr, [FontWeight? fw]) {
  return GoogleFonts.signika(
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}