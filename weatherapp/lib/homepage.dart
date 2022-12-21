import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textcontroller = TextEditingController();

  late Position position;
  var latitude;
  var longitute;

  Map<String, dynamic>? weatherMap;
  Map<String, dynamic>? forecastMap;

  determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    position = await Geolocator.getCurrentPosition();
    setState(() {
      latitude = position.latitude;
      longitute = position.longitude;
    });
    fetchWeatherData();
  }
  fetchWeatherData() async {
    String forecastUrl = "https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitute&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR2MIhWnKnisutHJ1y1dgxc-XbFFbVlG_T_f8F9_fhd6ZFC4PRI3oNAWgMc";
    String weatherUrl = "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitute&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR2MIhWnKnisutHJ1y1dgxc-XbFFbVlG_T_f8F9_fhd6ZFC4PRI3oNAWgMc";

    var weatherResponse = await http.get(Uri.parse(weatherUrl));
    var forecastResponse = await http.get(Uri.parse(forecastUrl));

    weatherMap = Map<String, dynamic>.from(jsonDecode(weatherResponse.body));
    forecastMap = Map<String, dynamic>.from(jsonDecode(forecastResponse.body));
    setState(() {});
  }

  @override
  void initState() {
    determinePosition();
    toast('Welcome To Homepage');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return forecastMap!=null?Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/back.gif'),
          fit: BoxFit.fill),
        ),
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,color: Colors.amber,size: 30,),
                    Text('Weather Forecast App',style: myFont(18, Colors.black,FontWeight.bold),),
                    Icon(Icons.notifications_active,color: Colors.amber,size: 30,)
                  ],
                ),
                SizedBox(height: 20,),
                Text('HI, Fazle Rabbi',style: myFont(22, Colors.black,FontWeight.bold)),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff2D388a)
                  ),
                  child: TextField(
                    controller: _textcontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.white,size: 30,),
                      border: InputBorder.none,
                      hintText: 'Search Your Desire City',
                      hintStyle: myFont(16, Colors.white,)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Current Time and Location',style: myFont(14, Colors.black)),
                    Text('${Jiffy(DateTime.now()).format("h:mm a")}',style: myFont(18,Colors.black,FontWeight.bold)),
                    Text('${Jiffy(DateTime.now()).format("MMM do yyyy")}',style: myFont(18, Colors.black,FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,color: Colors.amber,size: 30,),
                        Text("${weatherMap!["name"]}",style: myFont(18, Colors.amber,FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                //Temperature
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff2D388a),
                    image: DecorationImage(image: NetworkImage('https://i.pinimg.com/originals/e9/cf/a7/e9cfa71f02ff8e3504410e831d883cd7.gif'),fit: BoxFit.cover),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.network("http://openweathermap.org/img/wn/${forecastMap!["list"][0]["weather"][0]["icon"]}@2x.png",height: 80,),
                          Text('${weatherMap!["weather"][0]["description"]}',style: myFont(20, Colors.black,FontWeight.bold)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${weatherMap!["main"]["temp"]} °',style: myFont(35, Colors.black,FontWeight.bold)),
                          Text('Looks Like: ${weatherMap!["main"]["feels_like"]}',style: myFont(16, Colors.black)),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),

                //SunRise and SunSet
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1,color: Colors.black),
                        color: Color(0xff2D388a).withOpacity(0.1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/sunrise.png',height: 80,),
                          Text('Sunrise',style: myFont(16, Colors.black,FontWeight.bold)),
                          Text('${Jiffy("${DateTime.fromMillisecondsSinceEpoch(weatherMap!["sys"]["sunset"] * 1000)}").format('h:mm a')}',style: myFont(16, Colors.black,FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1,color: Colors.black),
                        color:Color(0xff2D388a).withOpacity(0.4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/sunset.png',height: 80,),
                          Text('Sunset',style: myFont(16, Colors.white,FontWeight.bold)),
                          Text('${Jiffy("${DateTime.fromMillisecondsSinceEpoch(weatherMap!["sys"]["sunrise"] * 1000)}").format('h:mm a')}',style: myFont(16, Colors.white,FontWeight.bold)),

                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                //Humidity Wind Pressure
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff2D388a).withOpacity(0.3)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      weatherwidget(
                        images: 'images/humidity.png',
                        title: 'Humidity',
                        value: '${weatherMap!["main"]["humidity"]} %',
                      ),
                      weatherwidget(
                        images: 'images/wind.png',
                        title: 'Wind',
                        value: '${weatherMap!["wind"]["speed"]} KMH',
                      ),
                      weatherwidget(
                        images: 'images/pressure.png',
                        title: 'Pressure',
                        value: '${weatherMap!["main"]["pressure"]} Pa',
                      ),
                      weatherwidget(
                        images: 'images/sea.png',
                        title: 'Sea Level',
                        value: '${forecastMap!['list'][0]['main']['sea_level']}',
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),

                //Forecast
                Text('Weather ForeCast',style: myFont(18, Colors.amber,FontWeight.bold),),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2,color: Colors.black),
                          color: Color(0xff2D388a).withOpacity(0.6)
                          // gradient: LinearGradient(
                          //   begin: Alignment.topRight,
                          //   end: Alignment.bottomLeft,
                          //   colors: [
                          //     Color(0xff2D388a),
                          //     Colors.deepPurple,
                          //     Colors.deepPurple,
                          //     Color(0xff2D388a),
                          //   ]
                          // )
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${Jiffy(forecastMap!["list"][index]["dt_txt"]).format("EEE h:mm")}",style: myFont(16, Colors.white,FontWeight.bold),),
                            Image.network(
                                "http://openweathermap.org/img/wn/${forecastMap!["list"][index]["weather"][0]["icon"]}@2x.png"),
                            Text(
                                "${forecastMap!["list"][index]["main"]["temp_min"]} / ${forecastMap!["list"][index]["main"]["temp_max"]} °",style: myFont(16, Colors.black,FontWeight.bold)),
                            Text(
                                "${forecastMap!["list"][index]["weather"][0]["description"]}",style: myFont(16, Colors.amberAccent,FontWeight.bold))
                          ],
                        ),
                      ),
                      separatorBuilder: (context,index)=>SizedBox(width: 10,),
                      itemCount: forecastMap!.length),
                ),
                SizedBox(height: 85,),
              ],
            ),
          ),
        ),
      ),
    ):Center(child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/sunrise.png',height: 150,),
     SizedBox(height: 5,),
     SpinKitWave(
      color: Color(0xff2D388a),
        size: 50.0,
      ),
          SizedBox(height: 5,),
          Text('Refreshing Weather Info...',style: myFont(16, Colors.amber,FontWeight.bold),),
        ],
      ),
    ));
  }
}

class weatherwidget extends StatelessWidget {
  weatherwidget({Key? key,this.images,this.title,this.value}) : super(key: key);

  String? images;
  String? title;
  String? value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 60,
          width:60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1,color: Colors.white),
            color: Colors.white.withOpacity(0.3)
          ),
          child: Image.asset("$images"),
        ),
        SizedBox(height: 5,),
        Text('$value',style: myFont(16, Colors.amberAccent,FontWeight.bold)),
        SizedBox(height: 5,),
        Text('$title',style: myFont(14, Colors.white)),
      ],
    );
  }
}

myFont(double size,Color color , [ FontWeight? fw]){
  return GoogleFonts.signika(
    fontSize: size,
    color: color,
    fontWeight: fw,
  );
}

toast(String title){
  return Fluttertoast.showToast(
      msg: "$title",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Color(0xff2D388a),
      textColor: Colors.amber,
      fontSize: 16.0
  );
}