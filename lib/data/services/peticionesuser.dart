import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../domain/models/user.dart';
import 'package:http/http.dart' as http;

class PeticionesUser {
  static Future<List<User>> validaruser(String u, String p) async {
    var url = Uri.parse(
        "https://desarolloweb2021a.000webhostapp.com/APIMOVIL/listaruser.php");

    var response = await http.post(url, body: {'user': u, 'pass': p});

    return compute(convertirAjson, response.body);
  }

  static List<User> convertirAjson(String responsebody) {
    final p = json.decode(responsebody).cast<Map<String, dynamic>>();
    return p.map<User>((json) => User.desdeJson(json)).toList();
  }
}
