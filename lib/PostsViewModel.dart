import 'package:flutter/cupertino.dart';

import 'package:json_placeholder/model/post.dart';
import 'package:json_placeholder/web_service.dart';

class PostsViewModel extends ChangeNotifier {
  List<Post> posts = List<Post>();

  Future<void> fetchPosts() async {
    final results = await WebService().fetchPosts();
    this.posts = results
        .map((dto) => Post(
            userId: dto.userId, id: dto.id, title: dto.title, body: dto.body))
        .toList();
    notifyListeners();
  }
}
