import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dto/post_dto.dart';

class WebService {
  final url = "http://jsonplaceholder.typicode.com/posts";

  Future<List<PostDto>> fetchPosts() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Iterable body = jsonDecode(response);
      return body.map((e) => PostDto.fromJson(e)).toList();
    } else {
      throw Exception("Unable to perform request");
    }
  }
}
