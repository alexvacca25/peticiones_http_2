

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:peticiones_http_2/domain/models/fotos.dart';
import 'package:http/http.dart' as http;

class PeticionesFotos {
  static Future<List<Fotos>> consultagral() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var response = await http.get(url);

    return compute(convertirAjson, response.body);
  }

  static List<Fotos> convertirAjson(String responsebody) {
    final p = json.decode(responsebody).cast<Map<String, dynamic>>();
    return p.map<Fotos>((json) => Fotos.desdeJson(json)).toList();
  }
}
