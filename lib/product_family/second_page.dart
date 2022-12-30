import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'fist_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: [
          Container(
            height: 100,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FistPage()));
                  },
                      icon: Icon(Icons.arrow_back_sharp,size: 30,)),
                  Text(
                    "XE",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green[900],
                    ),
                  ),
                 Image.asset("assets/images/Love.png",height: 30,width: 30,)
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.indigo[300],
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text("30%"),
                ),
                SizedBox(height: 70,),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(2,2),
                    )
                  ]
                  ),
                  child: Image.asset("assets/images/shos3.png"),
                ),
                SizedBox(height: 80,),
                Container(
                  height: 360,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Nike Air Mas 200",style: TextStyle(color: Colors.indigo,fontSize: 25),),
                            Row(
                              children: [
                                Image.asset("assets/images/star.png",height: 15,width: 15),
                                Text("(4.5)")
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                            child: Text("Built for natural motion,the Nike Flex shoes",style: TextStyle(color: Colors.indigo),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all( 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                                 Text("Size: ",style: TextStyle(fontSize: 16),),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.green[200],
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text("US 6")),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text("US 7")),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text("US 8")),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text("US 9")),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text("US 10")),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text("US 11")),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Available Color: ",style: TextStyle(fontSize: 16),),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                    color: Colors.purpleAccent,
                                  )
                                ]
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[700],
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("BD: 240.00",style: TextStyle(fontSize: 25),),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(Icons.shopping_cart,color: Colors.indigoAccent,),
                                        Text("Add To Cart",style: TextStyle(color:Colors.indigoAccent),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
