import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_placeholder/PostsViewModel.dart';
import 'package:json_placeholder/post_list_widget.dart';
import 'package:provider/provider.dart';

class PostListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PostListPageState();
  }
}

class _PostListPageState extends State<PostListPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<PostsViewModel>(context, listen: true).fetchPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<PostsViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Expanded(child: PostListWidget(vm.posts)),
      ),
    );
  }
}
