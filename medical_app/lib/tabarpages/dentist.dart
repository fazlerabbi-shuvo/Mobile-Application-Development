import 'package:flutter/material.dart';
import 'package:medical_app/model.dart';
class Dentist extends StatelessWidget {
  Dentist({Key? key}) : super(key: key);

  final den = ModelDen.generatedlist();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: den.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 15,
          childAspectRatio: 3,
        ),
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context,'dentistdetails',arguments: den[index]);
            },
            child: Container(
              height: 130,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Image.asset(den[index].image,fit: BoxFit.fill,),
                      )
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                      flex: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(den[index].name,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text(den[index].post),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Text(den[index].ratings),
                              Text(' | ${den[index].review} Review'),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              ),

            ),
          );
        }
    );
  }
}
