import 'package:flutter/material.dart';
import 'package:product/provider/post_provider.dart';
import 'package:provider/provider.dart';

class PostDemoScreen extends StatefulWidget {
  @override
  _PostDemoScreenState createState() => _PostDemoScreenState();
}

class _PostDemoScreenState extends State<PostDemoScreen> {
  @override
  void initState() {
    super.initState();
    //.......eta dara Provider er object creat korteche........
    final postMdl = Provider.of<PostProvider>(context, listen: false);
    postMdl.getPostData(context);
    postMdl.getPostListData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("API Provider Demo")),
        backgroundColor: Colors.green[700],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.teal,
            padding: EdgeInsets.all(20),
            child: postMdl==null ?
            Container(
              child: CircularProgressIndicator(),
            ) : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    "${postMdl.post!.title}" ?? "",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  child: Text("${postMdl.post!.body}" ?? ""),
                )
              ],
            )
            ,
          ),
          SizedBox(height: 25,),

          SizedBox(height: 25,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.green[700],
              child: Center(
                  child: Text("Post List", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black))),
            ),),

          postMdl.postList!=null ?
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            child: ListView.builder(
                itemCount: postMdl.postList!.length,

                padding: EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            child: Text("${index+1}",style: TextStyle(fontSize: 25,),),
                          ),
                        ),
                        Container(
                          color: Colors.teal,
                          margin: EdgeInsets.only(top: 40, bottom: 20),
                          child: Text(
                            "${postMdl.postList![index].title}" ?? "",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text("${postMdl.postList![index].body}" ?? ""),
                        )
                      ],
                    ),
                  );
                }),
          ) : Center(child: CircularProgressIndicator(),)
        ],
      ),
    );
  }
}