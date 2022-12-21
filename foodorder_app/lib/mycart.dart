import 'package:flutter/material.dart';
import 'package:foodorder_app/bottomnavbarpart.dart';
import 'package:foodorder_app/homepage.dart';
import 'package:foodorder_app/model.dart';
import 'package:foodorder_app/startingpage.dart';
class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final list3 = Model2.getList3();
  @override
  Widget build(BuildContext context) {
    double delivery = 5.99;
    double totalorder = _subTotalPrice + delivery;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.grey.withOpacity(0.1),
          child: Column(
            children: [
              //1st Segment
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.arrow_back,color: Colors.black,)),
                  ),
                  Text('My Cart',style: myFontStyle(20, Colors.black,FontWeight.bold),),
                  Icon(Icons.info,color: Colors.grey.withOpacity(0.1),)
                ],
              ),
              SizedBox(height: 30,),
              Expanded(
                flex: 15,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,index)=>Container(

                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2,color: Color(0xff2A2F43)),
                          color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                                child: Image.asset(list3[index].pic,fit: BoxFit.fill,)
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                                flex: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(list3[index].name,style: myFontStyle(18, Colors.black,FontWeight.bold),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.amber,),
                                            SizedBox(width: 5,),
                                            Text(list3[index].rating,style: myFontStyle(14, Colors.black54,FontWeight.w700),),
                                          ],
                                        ),
                                        SizedBox(width: 25,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on,color: Colors.pink,),
                                            SizedBox(width: 5,),
                                            Text(list3[index].distance,style: myFontStyle(14, Colors.black54,FontWeight.w700),),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('${list3[index].totalprice ?? list3[index].price}',style: myFontStyle(18, Colors.black,FontWeight.bold),),
                                        Row(
                                          children: [
                                            MaterialButton(onPressed: (){
                                              setState(() {
                                                //remove
                                                 if(list3[index].amount > 0)
                                                 {
                                                    list3[index].amount--;
                                                    list3[index].totalprice = list3[index].price * list3[index].amount;
                                                    getTotalPrice();
                                                 }
                                              });
                                            },
                                              child: Icon(Icons.remove,color: Colors.white,),
                                              color: Color(0xff2A2F43),
                                              minWidth: 30,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),

                                            SizedBox(width: 5,),
                                            Text('${list3[index].amount}',style: myFontStyle(16, Colors.black),),
                                            SizedBox(width: 5,),

                                            MaterialButton(onPressed: (){
                                              setState(() {
                                                list3[index].amount++;
                                                list3[index].totalprice = list3[index].price * list3[index].amount;
                                                getTotalPrice();
                                              });
                                            },
                                              child: Icon(Icons.add,color: Colors.white,),
                                              color: Color(0xff2A2F43),
                                              minWidth: 30,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                      separatorBuilder: (context,index)=>SizedBox(height: 20,),
                      itemCount: list3.length)),
              SizedBox(height: 25,),
              Expanded(
                  flex: 4,
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery',style: myFontStyle(16, Colors.black,FontWeight.bold),),
                      Text('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'),
                      Text('\$$delivery',style: myFontStyle(16, Color(0xffF87C38),FontWeight.bold)),
                    ],
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Order',style: myFontStyle(16, Colors.black,FontWeight.bold),),
                      Text('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - '),
                      Text('\$$_subTotalPrice',style: myFontStyle(16, Color(0xffF87C38),FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 25,),
                  MaterialButton(onPressed: (){
                    setState(() {
                      showDialog(context: context, builder: (context)=>
                          AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 3,color: Colors.black)
                            ),
                            content: Container(
                              alignment: Alignment.center,
                              height: 200,
                              width: 220,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Payment Success',style: TextStyle(fontSize: 20,color:Colors.green,fontWeight: FontWeight.bold),),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.check_box_outlined,size: 30,),
                                      Text('Done')
                                    ],
                                  ),
                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: MaterialButton(onPressed: (){
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>BottomNavigatorExample(title: 'Food Ordering App')));
                                    },child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.home_filled),
                                        Text('Back To Home'),
                                      ],
                                    ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          side: BorderSide(width: 3,color: Colors.black),
                                        ),
                                      color: Colors.amber,
                                      padding: EdgeInsets.symmetric(horizontal: 40),
                                      height: 55,
                                      ),
                                  )

                                ],
                              ),
                            ),
                      ));
                    });
                  },
                    child: Text('Pay \$${totalorder.toStringAsFixed(2)}',style: myFontStyle(20, Colors.white,FontWeight.bold),
                    ),
                    color: Color(0xff2A2F43),
                    minWidth: MediaQuery.of(context).size.width,
                    height: 60,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),

                  )
                ],
              )
              )

            ],
          ),
        ),
      ),
    );
  }
  double _subTotalPrice = 0;
  getTotalPrice() {
    double total = 0;
    list3.forEach((amount) {
      total += amount.totalprice ?? amount.price;
    });
    setState(() {
      _subTotalPrice = total;
    });
  }
  @override
  void initState() {
    getTotalPrice();
    super.initState();
  }
}

