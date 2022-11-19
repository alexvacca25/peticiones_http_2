import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_http_2/domain/controller/controlfotos.dart';

class Album extends StatelessWidget {
  const Album({super.key});

  @override
  Widget build(BuildContext context) {
    ControlAlbum ca = Get.find();
    ca.consultarFotos().then(
          (value) => null,
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria de Fotos'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/post');
              },
              icon: const Icon(Icons.comment_outlined))
        ],
      ),
      body: Obx(
        () => ca.listarfotos?.isNotEmpty == true
            ? ListView.builder(
                itemCount: ca.listarfotos!.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Text(ca.listarfotos![i].title),
                      Image.network(ca.listarfotos![i].url)
                    ],
                  );
                })
            : const Icon(Icons.abc),
      ),
    );
  }
}
