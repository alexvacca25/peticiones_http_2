import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:peticiones_http_2/domain/models/post.dart';

class PeticionesPost {
  static Future<List<Post>> consultagral() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);

    return compute(convertirAjson, response.body);
  }

  static List<Post> convertirAjson(String responsebody) {
    final p = json.decode(responsebody).cast<Map<String, dynamic>>();
    return p.map<Post>((json) => Post.desdeJson(json)).toList();
    
  }
}
