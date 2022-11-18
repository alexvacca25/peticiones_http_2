import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_http_2/domain/controller/controlpost.dart';

class ListPost extends StatelessWidget {
  const ListPost({super.key});

  @override
  Widget build(BuildContext context) {
    ControlPost cp = Get.find();
    cp.consultarPost().then(
          (value) => null,
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Comentarios'),
      ),
      body: Obx(
        () => cp.listarpost?.isNotEmpty == true
            ? ListView.builder(
                itemCount: cp.listarpost!.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(cp.listarpost![i].id.toString()),
                    ),
                    title: Text(cp.listarpost![i].title),
                  );
                })
            : const Icon(Icons.abc),
      ),
    );
  }
}
