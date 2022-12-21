import 'package:flutter/material.dart';
import 'package:foodorder_app/model.dart';
import 'package:foodorder_app/mycart.dart';
import 'package:foodorder_app/startingpage.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  final list1 = Model.generatedlist();
  final list2 = Model1.getList2();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //1st Segment
            Row(
              children: [
                Text('Your Location',style: myFontStyle(14, Colors.grey),),
                SizedBox(width: 10,),
                Icon(Icons.keyboard_arrow_down,size: 25,),
              ],
            ),

            //2nd Segment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_rounded,size: 25,color: Color(0xfff87b36),),
                    SizedBox(width: 5,),
                    Text('Shibuya , Japan',style: myFontStyle(16, Colors.black,FontWeight.w700),),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.7)
                      ),
                        child: Icon(Icons.search,size: 30,color: Colors.black,)
                    ),
                    SizedBox(width: 20,),
                    Stack(
                      children:[
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCart()));
                          },
                          child: Container(
                            height: 55,
                            width: 50,
                            color: Colors.transparent,
                            padding: EdgeInsets.all(5),
                            child: Container(
                            alignment: Alignment.center,
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white.withOpacity(0.7)
                              ),
                              child: Icon(Icons.shopping_cart,size: 30,color: Colors.black,)
                      ),
                          ),
                        ),
                        Positioned(
                            top: -4,
                            right: 7,
                            child: Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 15,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffF95F5F),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Text('3',style: myFontStyle(10, Colors.white,FontWeight.bold),),
                            )
                        )
        ]
                    ),

                  ],
                ),
              ],
            ),

            //3rd Segment
            SizedBox(height: 30,),
            Text('Let\'s finds the best\nfood arround you',style: myFontStyle(30, Colors.black,FontWeight.bold),),
            SizedBox(height: 30,),

            //4th Segment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Find by Category',style: myFontStyle(18, Colors.black,FontWeight.bold),),
                Text('See All',style: myFontStyle(16, Color(0xffEAB96E),FontWeight.bold),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>GestureDetector(
                    onTap: (){
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height*0.10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(width: selected==index?3:0,color: selected==index?Colors.orange:Colors.transparent),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(list1[index].pic,height: MediaQuery.of(context).size.height*0.08,width: 100,),
                          Text(list1[index].name,style: myFontStyle(16, Colors.black,FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (context,index)=>SizedBox(width: 15,),
                  itemCount: list1.length),
              ),

            SizedBox(height: 20,),
            Text('Recent ( 40 ) ',style: myFontStyle(14, Colors.black38,FontWeight.bold),),
            SizedBox(height: 20,),

            Container(
              //height: MediaQuery.of(context).size.height*0.25,
              child: GridView.builder(
                itemCount: list1.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.9,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(list2[index].pic,height: 100,),
                        Text(list2[index].name,style: myFontStyle(16, Colors.black,FontWeight.bold),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orange,),
                                SizedBox(width: 5,),
                                Text(list2[index].rating,style: myFontStyle(14, Colors.black.withOpacity(0.5),FontWeight.bold),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on_rounded,color: Colors.pink,),
                                  SizedBox(width: 5,),
                                  Text(list2[index].distance,style: myFontStyle(14, Colors.black.withOpacity(0.5),FontWeight.bold),),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$ ${list2[index].price}',style: myFontStyle(18, Colors.black,FontWeight.bold),),
                            Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                                color: Colors.black,
                              ),
                              child: Icon(Icons.shopping_cart_outlined,size: 25,color: Colors.white,),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                  }

              ),
            ),


          ],
        ),
      ),
    );
  }
}
