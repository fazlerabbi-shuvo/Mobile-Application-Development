import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitnessapp/homepage.dart';
import 'package:fitnessapp/model.dart';
import 'package:fitnessapp/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ThirdPage extends StatefulWidget {
ThirdPage({Key? key,this.model,this.time}) : super(key: key);
  final Model?model;
  int? time;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late Timer timer;
  int starttimer=0;

  @override
  void initState() {
    // TODO: implement initState
    timer = Timer.periodic(Duration(seconds: 1), (timer) {

      if (timer.tick == widget.time) {
        timer.cancel();
        setState(() {
          showToast("WorkOut Successfully Done");
          Future.delayed(Duration(seconds: 3), () {
            showDialog(context: context, builder: (context)=>
            AlertDialog(
              content: Container(
                padding: EdgeInsets.all(10),
                height: 120,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text('Do You Want To Do Workout Again?',style: myFont(16, Colors.black,FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
                        }, child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.exit_to_app_outlined,size: 30,color: Colors.deepPurple,),
                            SizedBox(width: 5,),
                            Text('Exit',style: myFont(18, Colors.deepPurple,FontWeight.bold),)
                          ],
                        ),
                          height: 50,
                          color: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(width: 2,color: Colors.deepPurple)
                          ),
                        ),

                        MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ThirdPage(model: widget.model,time: widget.time,)));
                        }, child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check_circle_rounded,size: 30,color: Colors.deepPurple,),
                            SizedBox(width: 5,),
                            Text('Ok',style: myFont(18, Colors.deepPurple,FontWeight.bold),)
                          ],
                        ),
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(width: 2,color: Colors.deepPurple)
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
            );
          });
        });
      }
      setState(() {
        starttimer = timer.tick;
      });
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepPurple.withOpacity(0.6),
        body: Container(
          width: double.infinity,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1,color: Colors.black),
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.watch_later_outlined,color: Colors.white,size: 30,),
                      SizedBox(width: 5,),
                      Text('Time : ',style: myFont(18, Colors.white,FontWeight.bold),),
                      SizedBox(width: 5,),
                      Text('$starttimer',style: myFont(18, Colors.white,FontWeight.bold),),
                    ],
                  ),
                ),
                ClipRect(
                  child: CachedNetworkImage(
                    width: double.infinity,
                    imageUrl: "${widget.model!.gif}",
                    fit: BoxFit.cover,
                    placeholder: (context, url) => SizedBox(
                      height: 400,
                      width: 400,
                      child: SpinKitCubeGrid(
                        color: Colors.deepPurple,
                        size: 50.0,
                      ),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.red,),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: MaterialButton(onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
                  }, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.exit_to_app_outlined,size: 30,color: Colors.deepPurple,),
                      SizedBox(width: 5,),
                      Text('Exit',style: myFont(18, Colors.deepPurple,FontWeight.bold),)
                    ],
                  ),
                    height: 50,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 2,color: Colors.deepPurple)
                    ),
                  ),
                ),

              ],
            )
        ),
    ),
      );
  }
}


showToast(String title) {
  return Fluttertoast.showToast(
      msg: "$title",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.deepPurple,
      textColor: Colors.white,
      fontSize: 16.0);
}