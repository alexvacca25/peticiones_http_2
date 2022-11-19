import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:peticiones_http_2/domain/controller/controlconexion.dart';
import 'package:peticiones_http_2/domain/controller/controlfotos.dart';
import 'package:peticiones_http_2/domain/controller/controlpost.dart';
import 'package:peticiones_http_2/domain/controller/controluser.dart';
import 'package:peticiones_http_2/ui/app.dart';

void main() {
  ControlConexion cc = Get.put(ControlConexion());

  Connectivity().onConnectivityChanged.listen((estado) {
    cc.connectivity = estado;
  });

  Get.put(ControlUser());
  Get.put(ControlAlbum());
  Get.put(ControlPost());
  runApp(const App());
}
