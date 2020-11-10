import 'package:http/http.dart' as http;
import 'package:jsontest/src/models/posts.dart';
import 'package:jsontest/src/repos/utils.dart';

class PostsRepository {
  Future<List<Posts>> getPosts() async {
    final response = await http.get(url);
    return postsFromJson(response.body);
  }
}
