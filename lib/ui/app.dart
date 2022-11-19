import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_http_2/ui/pages/listapost.dart';
import 'package:peticiones_http_2/ui/pages/listarfotos.dart';
import 'package:peticiones_http_2/ui/pages/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Solicitudes Http',
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/login': (context) => const Login(),
        '/post': (context) => const ListPost(),
        '/album': (context) => const Album()
      },
    );
  }
}
