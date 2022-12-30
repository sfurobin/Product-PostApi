import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'second_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                    },
                        icon: const Icon(Icons.arrow_back_sharp,size: 30,)),
                    const Text(
                      "My Cart",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.delete_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            Container(
              height: 770,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/shos7.png",height: 80,width: 100,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: const [
                              Text("Nike Air Max 200",style: TextStyle(fontSize: 18),),
                              Text("BD: 240.00",style: TextStyle(fontSize: 14,color: Colors.indigoAccent),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 80),
                            child: Column(
                            children: [
                              Image.asset("assets/images/minus (1).png",height: 20,width: 20,),
                              Text("1"),
                              Image.asset("assets/images/plus.png",height: 20,width: 20,),
                            ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/shos5.png",height: 80,width: 100,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Excee Sneakers",style: TextStyle(fontSize: 18),),
                              Text("BD: 260.00",style: TextStyle(fontSize: 14,color: Colors.indigoAccent),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 90),
                            child: Column(
                              children: [
                                Image.asset("assets/images/minus (1).png",height: 20,width: 20,),
                                Text("1"),
                                Image.asset("assets/images/plus.png",height: 20,width: 20,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/shos4.png",height: 80,width: 100,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: const [
                              Text("Air Max Motion 2",style: TextStyle(fontSize: 18),),
                              Text("BD: 290.00",style: TextStyle(fontSize: 14,color: Colors.indigoAccent),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 90),
                            child: Column(
                              children: [
                                Image.asset("assets/images/minus (1).png",height: 20,width: 20,),
                                Text("1"),
                                Image.asset("assets/images/plus.png",height: 20,width: 20,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/shos3.png",height: 80,width: 100,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Leather Sneakers",style: TextStyle(fontSize: 18),),
                              Text("BD: 270.00",style: TextStyle(fontSize: 14,color: Colors.indigoAccent),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 90),
                            child: Column(
                              children: [
                                Image.asset("assets/images/minus (1).png",height: 20,width: 20,),
                                Text("1"),
                                Image.asset("assets/images/plus.png",height: 20,width: 20,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/shos4.png",height: 80,width: 100,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: const [
                              Text("Nike Air Max 200",style: TextStyle(fontSize: 18),),
                              Text("BD: 2240.00",style: TextStyle(fontSize: 14,color: Colors.indigoAccent),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 90),
                            child: Column(
                              children: [
                                Image.asset("assets/images/minus (1).png",height: 20,width: 20,),
                                Text("1"),
                                Image.asset("assets/images/plus.png",height: 20,width: 20,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text:const TextSpan(
                            text: "Subtotal:  ",style: TextStyle(fontSize: 18, color: Colors.purple),
                            children: [
                              TextSpan(
                                text: "1250tk",style: TextStyle(fontSize: 20,color: Colors.black),
                              )
                            ]
                          )
                        ),
                        RichText(
                            text:const TextSpan(
                                text: "Taxes:  ",style: TextStyle(fontSize: 18, color: Colors.purple),
                                children: [
                                  TextSpan(
                                    text: "40tk",style: TextStyle(fontSize: 20,color: Colors.black),
                                  )
                                ]
                            )
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 90,
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
                              Text("BD: 1290.00",style: TextStyle(fontSize: 25),),
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
                                    Icon(Icons.spellcheck_outlined,color: Colors.indigoAccent,),
                                    Text("Check Out",style: TextStyle(color:Colors.indigoAccent),)
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
            )
          ],
        ),
      ),
    );
  }
}


