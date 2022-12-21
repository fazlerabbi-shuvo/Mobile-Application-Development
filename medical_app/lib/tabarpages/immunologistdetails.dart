import 'package:flutter/material.dart';
import 'package:medical_app/homepage.dart';
import 'package:medical_app/model.dart';
import 'package:readmore/readmore.dart';
class ImmunologistDetails extends StatelessWidget {
  const ImmunologistDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heart = ModalRoute.of(context)!.settings.arguments as ModelImm;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 18,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Column(
                children: [
                  //Starting Portion
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(Icons.arrow_back_ios_new))),
                        Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Icon(Icons.mail_rounded)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  Expanded(
                      flex: 12,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                      padding: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          color: Colors.white),
                                      child: Image.asset(heart.image,
                                        fit: BoxFit.cover,
                                        height: 180,
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr Anna Baker',
                                          style: myFont(18, Colors.black,
                                              FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text('Heart Surgeon Speccialist',
                                            style: myFont(16, Colors.grey,
                                                FontWeight.bold)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                      color: Colors.white),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                )),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                                flex: 9,
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Rating',
                                                        style: myFont(
                                                            16,
                                                            Colors.grey,
                                                            FontWeight.bold)),
                                                    Text('4.5 out of 5',
                                                        style: myFont(
                                                            16,
                                                            Colors.black,
                                                            FontWeight.bold))
                                                  ],
                                                ))
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                      color: Colors.white),
                                                  child: Icon(
                                                    Icons.group,
                                                    color: Colors.blueAccent,
                                                  ),
                                                )),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                                flex: 9,
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Patient',
                                                        style: myFont(
                                                            16,
                                                            Colors.grey,
                                                            FontWeight.bold)),
                                                    Text('1000+',
                                                        style: myFont(
                                                            16,
                                                            Colors.black,
                                                            FontWeight.bold))
                                                  ],
                                                ))
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Biography',
                                      style: myFont(
                                          18, Colors.black, FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReadMoreText(
                                    heart.biography,
                                    trimLines: 2,
                                    textAlign: TextAlign.justify,
                                    trimMode: TrimMode.Line,
                                    colorClickableText: Color(0xff0957DF),
                                    trimCollapsedText: 'Read more',
                                    style: myFont(16, Colors.grey),
                                    trimExpandedText: ' ..Show Less',
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Location',
                                      style: myFont(
                                          18, Colors.black, FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage('images/map.jpeg'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Reviews',
                                          style: myFont(18, Colors.black,
                                              FontWeight.bold)),
                                      Text('See all',
                                          style: myFont(
                                              18, Colors.blue, FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Image.asset('images/d4.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text('Name',
                                                style: myFont(16, Colors.black,
                                                    FontWeight.bold)),
                                            Text('Reviews',
                                                style: myFont(
                                                  16,
                                                  Colors.black,
                                                )),
                                            Row(
                                              children: [
                                                Text('Ratings: 4.5',
                                                    style: myFont(
                                                      16,
                                                      Colors.black,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),

          //End Portion
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xff004DD4),
                      ),
                      Text('Make Appoinment',style: myFont(18, Colors.white,FontWeight.bold)),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    ],
                  ),
                  color: Color(0xff004DD4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
