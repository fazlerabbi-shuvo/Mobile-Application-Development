import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitnessapp/model.dart';
import 'package:fitnessapp/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String apilink = 'https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json';
  List<Model> AllData=[];
  late Model exercisemodel;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  fetchData() async{
    try{
      var response = await http.get(Uri.parse(apilink));
      if(response.statusCode == 200)
        {
          var data = jsonDecode(response.body)['exercises'];
          for(var i in data)
            {
              exercisemodel = Model(
                id: i['id'],
                title: i['title'],
                thumbnail: i['thumbnail'],
                gif: i['gif'],
                seconds: i['seconds'],
              );
              setState(() {
                AllData.add(exercisemodel);
              });
            }
        }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Fitness App',style: myFont(25, Colors.white,FontWeight.bold),),
        leading: Icon(Icons.home),
        actions: [Icon(Icons.menu)],
      ),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: AllData.length,
          itemBuilder: (context,index)=>
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage(model: AllData[index],)));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1,color: Colors.deepPurple.withOpacity(0.8))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('WorkOut No - ${AllData[index].id}',style: myFont(16, Colors.green,FontWeight.bold),),
                      SizedBox(height: 5,),
                      Stack(
                        children:[ Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 4,color: Colors.black),
                          ),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height*0.25,
                          child: CachedNetworkImage(
                            width: double.infinity,
                            imageUrl: "${AllData[index].thumbnail}",
                            fit: BoxFit.cover,
                            placeholder: (context, url) => SizedBox(
                              height: 400,
                              width: 400,
                              child: SpinKitFoldingCube(
                                color: Colors.deepPurple,
                                size: 50.0,
                              ),
                            ),
                            errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.red,),
                          ),
                        ),
                          Positioned(
                            bottom: 0,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width*0.85,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.purple.withOpacity(0.6),
                                      Colors.blue.withOpacity(0.6),
                                      Colors.green.withOpacity(0.6)
                                    ]
                                  )
                                ),
                            child: Text('${AllData[index].title}',style: myFont(20, Colors.black,FontWeight.bold),),
                          ))
                        ]
                      ),
                    ],
                  ),
                ),
              )
      ),

    );
  }
}

myFont(double size , Color color , [FontWeight?fw]){
  return GoogleFonts.signika(
    fontSize: size,
    color: color,
    fontWeight: fw,
  );
}
