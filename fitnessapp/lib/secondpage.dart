import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitnessapp/homepage.dart';
import 'package:fitnessapp/model.dart';
import 'package:fitnessapp/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
class SecondPage extends StatefulWidget {
 SecondPage({Key? key,this.model
 }) : super(key: key);
 
final Model? model;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int time = 3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ThirdPage(
              model: widget.model,
            )));
          },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.6,
                    child: CachedNetworkImage(
                      width: double.infinity,
                      imageUrl: "${widget.model!.thumbnail}",
                      fit: BoxFit.cover,
                      placeholder: (context, url) => SizedBox(
                        height: 400,
                        width: 400,
                        child: SpinKitWave(
                          color: Colors.deepPurple,
                          size: 50.0,
                        ),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.red,),
                    ),
                    ),
                SizedBox(height: 10,),
                Text('${widget.model!.title}',style: myFont(20, Colors.blueAccent,FontWeight.bold),),
                SizedBox(height: 40,),
  SleekCircularSlider(
        min: 3,
        max: 30,
        initialValue: time.toDouble(),
        onChange: (double value) {
          setState(() {
            time = value.toInt();
          });
        // callback providing a value while its being changed (with a pan gesture)
      },
        onChangeStart: (double startValue) {
          // callback providing a starting value (when a pan gesture starts)
        },
        onChangeEnd: (double endValue) {
          // ucallback providing an ending value (when a pan gesture ends)
        },
        innerWidget: (double value) {
          return Center(child: Text('$time Sec',style: myFont(25, Colors.deepPurple,FontWeight.bold),));
          // use your custom widget inside the slider (gets a slider value from the callback)
        },
      ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaterialButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ThirdPage(
                      model: widget.model,time: time,
                    )));

                  },child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.sports_gymnastics,size: 30,color: Colors.deepPurple,),
                      SizedBox(width: 5,),
                      Text('Start Workout',style: myFont(18, Colors.deepPurple,FontWeight.bold),)
                    ],
                  ),
                    height: 50,
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(width: 2,color: Colors.deepPurple)
                    ),
                  ),
                )




              ],
            )
        ),
      ),
    );
  }
}
