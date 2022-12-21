import 'package:flutter/material.dart';
import 'package:medical_app/bottomNavigationBarPart.dart';
import 'package:medical_app/homepage.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  double _slidervalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0857DE),
      body: Stack(children: [
    Column(
      children: [
        //
        //Top Part ( Main Part - 01 )
        //
        Expanded(
          flex: 17,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 35, 20, 20),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                  // Back Ground Doctor Picture
                  fit: BoxFit.cover,
                  image: AssetImage('images/doctor.png'),
                ),
                color: Colors.grey.withOpacity(0.8)),
            child: Column(
              //Main Part-01 Main Column
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20),
                                      side: BorderSide(
                                          width: 3,
                                          color: Color(0xff0857DE))),
                                  content: Container(
                                    alignment: Alignment.center,
                                    height: 90,
                                    color: Colors.white70,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Are You Sure To End The Call ?\n',style: myFont(16, Colors.blueAccent,FontWeight.bold),),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          children: [
                                            //'No' Button
                                            MaterialButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.cancel,
                                                    color: Colors.black,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('No',style: myFont(16, Colors.black,FontWeight.bold)),
                                                ],
                                              ),
                                              color: Colors.white70
                                                  .withOpacity(0.8),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                  side: BorderSide(
                                                      width: 3,
                                                      color: Color(
                                                          0xff00FF00))),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            //'End' Button
                                            MaterialButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    BottomNavigationBarPart()));
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (context) =>
                                                            AlertDialog(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        10),
                                                                side: BorderSide(
                                                                    width:
                                                                        3,
                                                                    color: Colors
                                                                        .blue),
                                                              ),
                                                              title: Center(
                                                                child: Text(
                                                                    'Call Duration',style: myFont(18, Colors.blueAccent,FontWeight.bold)),
                                                              ),
                                                              content:
                                                                  Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height: 75,
                                                                child:
                                                                    Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                        'Total : 05 Min 46 Sec',style: myFont(14, Colors.black,FontWeight.bold)),
                                                                    SizedBox(
                                                                      height:
                                                                          5,
                                                                    ),
                                                                    MaterialButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.of(context).pop();
                                                                      },
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.check_box,
                                                                            color: Colors.black,
                                                                          ),
                                                                          SizedBox(
                                                                            width: 5,
                                                                          ),
                                                                          Text('Ok',style: myFont(14, Colors.black,FontWeight.bold))
                                                                        ],
                                                                      ),
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                        side:
                                                                            BorderSide(width: 3, color: Colors.black),
                                                                      ),
                                                                      color:
                                                                          Colors.blueAccent,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ));
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check_circle,
                                                    color: Colors.black,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('End',style: myFont(16, Colors.black,FontWeight.bold)),
                                                ],
                                              ),
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                  side: BorderSide(
                                                      width: 3,
                                                      color: Color(
                                                          0xffF00505))),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),

                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/patient.png'),
                        ),
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                //1st Segment

                //Slider Part
                Container(
                  height: 220,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.6)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${_slidervalue.toStringAsFixed(0)}',style: myFont(14, Colors.black,FontWeight.bold),),
                      SizedBox(
                        height: 150,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Slider(
                            value: _slidervalue,
                            onChanged: (value) {
                              setState(() {
                                _slidervalue = value;
                              });
                            },
                            activeColor: _slidervalue >= 80
                                ? Color(0xffE20303)
                                : _slidervalue >= 20
                                    ? Color(0xff030EE2)
                                    : Color(0xff0CBD04),
                            divisions: 100,
                            label: 'Volume',
                            min: 0,
                            max: 100,
                            inactiveColor: _slidervalue >= 80
                                ? Color(0xffE20303).withOpacity(0.4)
                                : _slidervalue >= 20
                                    ? Color(0xff030EE2).withOpacity(0.4)
                                    : Color(0xff0CBD04).withOpacity(0.4),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.volume_up,
                        color: _slidervalue >= 80
                            ? Color(0xffE20303)
                            : _slidervalue >= 30
                                ? Color(0xff030EE2)
                                : Color(0xff0CBD04),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dermatologists',
                          style: myFont(16, Colors.black54.withOpacity(0.5),FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Dr. Haley Lawrence',
                          style: myFont(18, Colors.black87,FontWeight.bold)),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black.withOpacity(0.3)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  '05.46',
                                    style: myFont(16, Colors.white,FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //
        //Bottom button Part ( Main - 02
        //

        Expanded(
          flex: 2,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.1)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.video_call),
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.1)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic),
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.1)),
                  child: IconButton(
                    onPressed: () {
                      print('Clicked');
                    },
                    icon: Icon(Icons.message_rounded),
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.1)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    color: Colors.white,
                  ),
                ),
              ],
            ), //Bottom Button Part
          ),
        ),
      ],
    ),

    Positioned(
        bottom: 50,
        left: MediaQuery.of(context).size.width * 0.4,
        child: CircleAvatar(
          backgroundColor: Color(0xff0857DC),
          radius: 40,
          child: GestureDetector(
            onTap: () {
              //
              //Show Dialog Box For Center Button
              //
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                width: 3, color: Color(0xff0857DE))),
                        content: Container(
                          alignment: Alignment.center,
                          height: 90,
                          color: Colors.white70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Are You Sure To End The Call ?\n',style: myFont(16, Colors.blueAccent,FontWeight.bold)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //'No' Button
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.cancel,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('No',style: myFont(14, Colors.black,FontWeight.bold)),
                                      ],
                                    ),
                                    color: Colors.white70.withOpacity(0.8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12),
                                        side: BorderSide(
                                            width: 3,
                                            color: Color(0xff00FF00))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  //'End' Button
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BottomNavigationBarPart()));
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                shape:
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                  side: BorderSide(
                                                      width: 3,
                                                      color: Colors.blue),
                                                ),
                                                title: Center(
                                                  child:
                                                      Text('Call Duration',style: myFont(18, Colors.blueAccent,FontWeight.bold)),
                                                ),
                                                content: Container(
                                                  alignment:
                                                      Alignment.center,
                                                  height: 75,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                          'Total : 05 Min 46 Sec',style: myFont(16, Colors.black,FontWeight.bold)),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      MaterialButton(
                                                        onPressed: () {
                                                          Navigator.of(
                                                                  context)
                                                              .pop();
                                                        },
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .check_box,
                                                              color: Colors
                                                                  .black,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text('Ok',style: myFont(14, Colors.black,FontWeight.bold))
                                                          ],
                                                        ),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10),
                                                          side: BorderSide(
                                                              width: 3,
                                                              color: Colors
                                                                  .black),
                                                        ),
                                                        color: Colors
                                                            .blueAccent,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ));
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('End',style: myFont(14, Colors.black,FontWeight.bold)),
                                      ],
                                    ),
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12),
                                        side: BorderSide(
                                            width: 3,
                                            color: Color(0xffF00505))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ));
            },
            child: CircleAvatar(
              backgroundColor: Color(0xff0F2851),
              radius: 30,
              child: Icon(
                Icons.call_end_outlined,
                color: Colors.white,
              ),
            ),
          ),
        )),
      ]),
    );
  }
}
