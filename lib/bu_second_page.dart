import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bu_first_page.dart';

class AddtoCart extends StatefulWidget {
  const AddtoCart({Key? key}) : super(key: key);

  @override
  _AddtoCartState createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BurgerHomePage()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                ),
                Image.asset("assets/images/Love1.png",height: 25,width: 25,color: Colors.white,)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/2.5,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/bigburger.png"),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Naga Double Burger",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 10,),
                      Text("Calories: 344 kcal",style: TextStyle(fontSize: 20,color: Colors.black),),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,width: MediaQuery.of(context).size.width/1.3,
                        child: Text("Cheeseburger and a Naga Burger tpooed with lettuce,tomato and Shacksouce",style: TextStyle(fontSize: 16)),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width/1.1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Quantity",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                          Row(
                            children: [
                              Image.asset("assets/images/minus (1).png",height: 25,width: 25,),
                              SizedBox(width: 15,),
                              Text("1",style: TextStyle(fontSize: 18,)),
                              SizedBox(width: 15,),
                              Image.asset("assets/images/plus.png",height: 25,width: 30,),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 50,),
                      Center(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width/1.2,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Center(child: Text("Customize",style: TextStyle(fontSize: 18,color: Colors.black),)),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width/1.2,
                          decoration: BoxDecoration(
                              color: Colors.yellow[700],
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 130),
                                child: Text("Add to Cart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text("BD: 220tk",style: TextStyle(fontSize: 18,color: Colors.black),),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )


        ],
      ),
    );
  }
}
