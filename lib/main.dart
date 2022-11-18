import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_http_2/domain/controller/controlpost.dart';
import 'package:peticiones_http_2/ui/app.dart';

void main() {
  Get.put(ControlPost());
  runApp(const App());
}
