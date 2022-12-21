import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/tabarpages/dentist.dart';

import 'package:medical_app/tabarpages/heartspecialist.dart';
import 'package:medical_app/model.dart';
import 'package:medical_app/page3.dart';
import 'package:medical_app/tabarpages/immunologist.dart';
import 'package:medical_app/tabarpages/neurologist.dart';
import 'package:medical_app/tabarpages/psychologist.dart';
import 'package:medical_app/videocallingscreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  final list2 = ModelHeart.generatedlist();
  TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.grey.withOpacity(0.3),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(
                        Icons.grid_view_outlined,
                        size: 30,
                        color: Colors.grey,
                      )),
                  Column(
                    children: [
                      Text(
                        'Current Location',
                        style: myFont(
                            14, Colors.black.withOpacity(0.5), FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color(0xff0857DE),
                          ),
                          Text('Semarang , INA',
                              style: myFont(16, Colors.black, FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 5, color: Colors.white),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/doctor.png'),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: _text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Color(0xff0857DE),
                    ),
                    hintText: 'Search a doctor or health issue',
                    hintStyle: myFont(
                      16,
                      Colors.black.withOpacity(0.5),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcomming Schedule',
                      style: myFont(18, Colors.black, FontWeight.bold)),
                  Text('See all',
                      style: myFont(16, Colors.blueAccent, FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                padding: EdgeInsets.all(20),
                height: 164,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff0857DE),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff0857DE).withOpacity(0.2),
                      spreadRadius: -25,
                      blurRadius: 1,
                      offset: Offset(0, 47),
                    ),
                    BoxShadow(
                      color: Color(0xff0857DE).withOpacity(0.4),
                      spreadRadius: -10,
                      blurRadius: 1,
                      offset: Offset(
                        0,
                        20,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/doctor.png'),
                              ),
                              color: Colors.grey.withOpacity(0.5)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr. Haley Lawrence',
                                style:
                                    myFont(18, Colors.white, FontWeight.bold)),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Dermatologists',
                                style: myFont(14, Colors.white.withOpacity(0.7),
                                    FontWeight.bold)),
                          ],
                        ),
                        Spacer(),
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(8),
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: InkWell(
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
                                              height: 68,
                                              color: Colors.white70,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      'Do You Want To Start Call ?',
                                                      style: myFont(
                                                          16,
                                                          Color(0xff0857DE),
                                                          FontWeight.bold)),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      MaterialButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.cancel,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            Text('Cancel',
                                                                style: myFont(
                                                                    14,
                                                                    Colors
                                                                        .black,
                                                                    FontWeight
                                                                        .bold)),
                                                          ],
                                                        ),
                                                        color: Colors.white70
                                                            .withOpacity(0.8),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            side: BorderSide(
                                                                width: 3,
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      MaterialButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pushReplacement(
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              VideoCallingSplash()));
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.videocam,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text('Start Call',
                                                                style: myFont(
                                                                    14,
                                                                    Colors
                                                                        .white,
                                                                    FontWeight
                                                                        .bold)),
                                                          ],
                                                        ),
                                                        color:
                                                            Color(0xff0857DE),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            side: BorderSide(
                                                                width: 3,
                                                                color: Colors
                                                                    .black)),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ));
                                },
                                child: Icon(
                                  Icons.videocam_outlined,
                                  size: 25,
                                  color: Color(0xff0857DE),
                                ))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff004DD4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.watch_later,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Thu , Nov 07 , 08.00am - 10.00am',
                              style: myFont(16, Colors.white, FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Let\'s Find Your Doctor',
                      style: myFont(18, Colors.black, FontWeight.bold)),
                  Icon(
                    Icons.tune_outlined,
                    color: Color(0xff004DD4),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //TabBar
              TabBar(
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                //indicatorColor: ,
                unselectedLabelColor: Color(0xff004DD4),
                isScrollable: true,
                labelColor: Colors.red,
                controller: _tabController,

                tabs: [
                  //Heart
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.transparent),
                    child: Tab(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Image.asset(
                                'images/heart.png',
                                height: 20,
                                width: 20,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Heart',
                              style: GoogleFonts.signika(
                                  fontSize: 16, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  //Psychologist
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.transparent),
                    child: Tab(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Image.asset(
                                'images/phy.png',
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Psychologist',
                              style: GoogleFonts.signika(
                                  fontSize: 16, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  //Neurologist
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.transparent),
                    child: Tab(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Image.asset(
                                'images/neu.png',
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Neurologist',
                              style: GoogleFonts.signika(
                                  fontSize: 16, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  //Immunologists
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.transparent),
                    child: Tab(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Image.asset(
                                'images/imo.png',
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Immunologist',
                              style: GoogleFonts.signika(
                                  fontSize: 16, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  //Dermatologists
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.transparent),
                    child: Tab(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Image.asset(
                                'images/tooth.png',
                                height: 20,
                                width: 20,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Dentist',
                              style: GoogleFonts.signika(
                                  fontSize: 16, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  //Dentist
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 725,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    HeartSpecialist(),
                    Psychologist(),
                    Neurologist(),
                    Immunologist(),
                    Dentist(),
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),

              //Container Here
              //       SizedBox(height: 20,),
              //       Container(
              //         alignment: Alignment.center,
              //         height: 60,
              //         child: ListView.separated(
              //           scrollDirection: Axis.horizontal,
              //             itemBuilder: (context,index){
              //             return GestureDetector(
              //               onTap: (){
              //                 setState(() {
              //                   selected = index;
              //                 });
              //               },
              //               child: Container(
              //                 padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
              //                 alignment: Alignment.center,
              //                 //height: 60,
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(15),
              //                   color: selected==index?Colors.white:Colors.grey.withOpacity(0.3),
              //                   border: Border.all(width: 1,color: selected==index?Colors.white:Colors.grey.withOpacity(0.4))
              //                 ),
              //                 child: Row(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Container(
              //                       height: 40,
              //                       padding: EdgeInsets.all(5),
              //                       decoration: BoxDecoration(
              //                         shape: BoxShape.circle,
              //                         color: Colors.grey.withOpacity(0.3)
              //                       ),
              //                         child: Image.asset(list[index].image)
              //                     ),
              //                     SizedBox(width: 5,),
              //                     Text(list[index].post),
              //                   ],
              //                 ),
              //               ),
              //             );
              //             },
              //             separatorBuilder: (context,index)=>SizedBox(width: 10,),
              //             itemCount: list.length),
              //       ),
              //       SizedBox(height: 20,),
              //       Container(
              //         height: 245,
              //         child: GridView.builder(
              //           itemCount: list2.length,
              //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //               crossAxisCount: 1,
              //               mainAxisSpacing: 10,
              //               childAspectRatio: 3,
              //             ),
              //             itemBuilder: (context,index){
              //             return GestureDetector(
              //               onTap: (){
              //                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page1()));
              //               },
              //               child: Container(
              //               height: 130,
              //               padding: EdgeInsets.all(20),
              //               decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       color: Colors.white,
              //       ),
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //
              //         Expanded(
              //           flex: 5,
              //           child: Container(
              //               padding: EdgeInsets.symmetric(vertical: 10),
              //           height: 80,
              //           width: 100,
              //               decoration: BoxDecoration(
              //                 color: Colors.grey.withOpacity(0.5),
              //                 borderRadius: BorderRadius.circular(12)
              //               ),
              //               child: Image.asset(list2[index].image,fit: BoxFit.fill,),
              //           )
              //       ),
              //       SizedBox(width: 20,),
              //       Expanded(
              //       flex: 16,
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(list2[index].name,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
              //       Text(list2[index].post),
              //       Row(
              //       children: [
              //         Icon(Icons.star,color: Colors.amber,),
              //       Text(list2[index].ratings),
              //       Text(' | ${list2[index].review} Review'),
              //       ],
              //       )
              //       ],
              //       )
              //       ),
              //       ],
              //       ),
              //
              //               ),
              //             );
              //       }
              // ),
              //       )
            ],
          ),
        ),
      ),
    );
  }
}

myFont(double fontsize, Color color, [FontWeight? fontWeight]) {
  return GoogleFonts.signika(
    fontSize: fontsize,
    color: color,
    fontWeight: fontWeight,
  );
}
