import 'package:flutter/cupertino.dart';
import 'package:product/provider/post_model.dart';
import 'package:product/repository/post_repo.dart';

class PostProvider with ChangeNotifier{

  PostRepo? postRepo = PostRepo();

  bool loading = false;
  List<PostModel>? _postList;
  List<PostModel>? get postList=>_postList;

  PostModel? _post;
  PostModel? get post => _post;
//..............................1 ta post er formate....................
  getPostData(context) async {
    loading = true;
    _post = await postRepo!.getSinglePostData(context);
    loading = false;
    notifyListeners();
  }
//...............................onek gula post er jonno ei formate............
  getPostListData(context) async {
    loading = true;
    _postList = await postRepo!.getPostListData(context);
    loading = false;
    print(_postList); //......ei print holo(optaional) termainal e dekhar jonno....
    notifyListeners();
  }


}
