import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/post.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;

  PostListWidget(this.posts);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.posts.length,
        itemBuilder: (context, index) {
          final post = this.posts[index];
          return ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(post.title),
          );
        });
  }
}
