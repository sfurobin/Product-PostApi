import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FistPage extends StatefulWidget {
  const FistPage({Key? key}) : super(key: key);

  @override
  _FistPageState createState() => _FistPageState();
}

class _FistPageState extends State<FistPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: ListView(
          children: [
            Container(
              height: 100,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 25,
                    ),
                    Text(
                      "XE",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.green[900],
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Text(
                    "Our Product",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width:100,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/Shos2.png",height: 35,width: 40,),
                          Text("Sneakers")
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width:100,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/watch1.png",height: 35,width: 35,),
                          Text("Watch")
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width:100,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/hudi1.png",height: 35,width: 35,),
                          Text("Hudi")
                        ],
                      ),
                    ),

                    SizedBox(width: 15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width:120,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/bockpack.png",height: 35,width: 35,),
                          Text("Bockpack")
                        ],
                      ),
                    ),

                    SizedBox(width: 15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width:150,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/smart watch1.png",height: 35,width: 35,),
                          Text("Smart watch")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
              child: Row(
                children: [
                  Container(
                    height: 250,
                    width: 170,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.indigo[300],
                                  borderRadius: BorderRadius.all(Radius.circular(5))),
                                child: Text("30%"),
                              ),
                              Image.asset("assets/images/Love1.png",height: 20,width: 20,)
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset("assets/images/shos3.png",height: 100,width: 100,)
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Nike Air Max 20",style: TextStyle(fontSize: 18),),
                            Text("BD:240.00",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/rating (1).png",height: 50,width: 80,)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 250,
                    width: 170,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 120,top: 15),
                          child: Image.asset("assets/images/Love.png",height: 20,width: 20,)
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset("assets/images/shos4.png",height: 100,width: 100,)
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Excee Sneakers",style: TextStyle(fontSize: 18),),
                            Text("BD:260.00",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/rating (1).png",height: 50,width: 80,)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
              child: Row(
                children: [
                  Container(
                    height: 250,
                    width: 170,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 120,top: 15),
                            child: Image.asset("assets/images/Love1.png",height: 20,width: 20,)
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset("assets/images/shos5.png",height: 100,width: 100,)
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Air Max Motion 2",style: TextStyle(fontSize: 18),),
                            Text("BD:290.00",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/rating (1).png",height: 50,width: 80,)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 250,
                    width: 170,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                         Padding(
                           padding: const EdgeInsets.all(15),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.indigo[300],
                                    borderRadius: BorderRadius.all(Radius.circular(5))),
                                child: Text("40%"),
                              ),
                              Image.asset("assets/images/Love1.png",height: 20,width: 20,)
                            ],
                        ),
                         ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset("assets/images/shos7.png",height: 100,width: 100,)
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Leather Sneakers",style: TextStyle(fontSize: 18),),
                            Text("BD:650.00",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/rating (1).png",height: 50,width: 80,)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
