import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_http_2/ui/pages/listapost.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Solicitudes Http',
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: const ListPost(),
    );
  }
}
