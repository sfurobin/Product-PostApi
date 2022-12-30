import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bu_second_page.dart';

class BurgerHomePage extends StatefulWidget {
  const BurgerHomePage({Key? key}) : super(key: key);

  @override
  _BurgerHomePageState createState() => _BurgerHomePageState();
}

class _BurgerHomePageState extends State<BurgerHomePage> {

  final Textcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 35,
                  )),
              const Text(
                "Home",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueGrey, width: 2),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://media.licdn.com/dms/image/C5603AQESCxB3MmNZvw/profile-displayphoto-shrink_200_200/0/"
                      "1659156651726?e=1677110400&v=beta&t=QEZ6HCB_xvoAARz4EWgbflsX1BsMzOE8ko9v_Jko8LE",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(30),
          child: Text("Find Best Burger In Your \nCity",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/1.4,
                  child: TextField(
                    controller: Textcontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: ("Search here"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoCart()));
                },
                    icon: Icon(Icons.search))
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Near you now", style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
              Text("SEE ALL")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Container(
            height: MediaQuery.of(context).size.height/1.8,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 5,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal[300],
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                              Text("4.2")
                            ],
                          ),
                        ),
                        Image.asset("assets/images/burgerbr5.png",height: 95,width: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Peter Luger",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/Love.png",height: 18,width: 20,)
                          ],
                        ),
                        Text("BD: 120tk")
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                              Text("3.2")
                            ],
                          ),
                        ),
                        Image.asset("assets/images/burgerbr4.png",height: 95,width: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Angus Burger",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/Love1.png",height: 16,width: 20,)
                          ],
                        ),
                        Text("BD: 140tk")
                      ],
                    ),
                  ),
                ) ,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown[300],
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                              Text("3.2")
                            ],
                          ),
                        ),
                        Image.asset("assets/images/burgerbr6.png",height: 95,width: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bean burger",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/Love1.png",height: 16,width: 20,)
                          ],
                        ),
                        Text("BD: 90tk")
                      ],
                    ),
                  ),
                ) ,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                              Text("4.5")
                            ],
                          ),
                        ),
                        Image.asset("assets/images/burgerbr7.png",height: 95,width: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Toler burger",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/Love1.png",height: 16,width: 20,)
                          ],
                        ),
                        Text("BD: 220tk")
                      ],
                    ),
                  ),
                ) ,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal[200],
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                              Text("3.5")
                            ],
                          ),
                        ),
                        Image.asset("assets/images/shackburger.png",height: 95,width: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Shack burger",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/Love1.png",height: 16,width: 20,)
                          ],
                        ),
                        Text("BD: 100tk")
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                              Text("3.5")
                            ],
                          ),
                        ),
                        Image.asset("assets/images/kingbigburger.png",height: 95,width: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("king Burger",style: TextStyle(fontSize: 18),),
                            Image.asset("assets/images/Love1.png",height: 16,width: 20,)
                          ],
                        ),
                        Text("BD: 140tk")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    )
        )
    );
  }
}
