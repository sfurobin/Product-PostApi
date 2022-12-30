import 'package:flutter/material.dart';
import 'package:product/product_family/fist_page.dart';
import 'package:product/product_family/second_page.dart';
import 'package:product/product_family/third_page.dart';
import 'package:product/provider/post_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'bu_first_page.dart';
import 'bu_second_page.dart';
import 'product_family/custom_navbar.dart';
import 'repository/post _demo.dart';

void main() {
  //...........runApp er vitor provider gula ke regeistations korte hobe .....
  runApp(MultiProvider(
    providers: providers,
      child: const MyApp()));
}
//..............ei list er kaj nice kora jabe ...................onek gula provider er jonno valo.
List<SingleChildWidget> providers = [
  ChangeNotifierProvider<PostProvider>(create: (_) => PostProvider()),
];
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Product(),
    );
  }
}
class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        body: Center(
          child: Column(
            children: [
                SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomNavbar()));
              },
                  child: Text("CustomNaviBar",style: TextStyle(fontSize: 25,color: Colors.black),)),
              SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FistPage()));
                },
                    child: Text("Fist Page",style: TextStyle(fontSize: 25,color: Colors.black),)),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                },
                    child: Text("Second Page",style: TextStyle(fontSize: 25,color: Colors.black),)),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
              },
                  child: Text("Third Page",style: TextStyle(fontSize: 25,color: Colors.black),)),

              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BurgerHomePage()));
              },
                  child: Text("Burger1stPage",style: TextStyle(fontSize: 25,color: Colors.black),)),

              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoCart()));
              },
                  child: Text("Add to Cart",style: TextStyle(fontSize: 25,color: Colors.black),)),

              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PostDemoScreen()));
              },
                  child: Text("Post API",style: TextStyle(fontSize: 25,color: Colors.black),))
              ],

          ),
        ),
      ),
    );
  }
}

