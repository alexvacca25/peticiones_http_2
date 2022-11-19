import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_http_2/domain/controller/controlconexion.dart';
import 'package:peticiones_http_2/domain/controller/controluser.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController u = TextEditingController();
  TextEditingController p = TextEditingController();
  ControlUser controlu = Get.find();
  ControlConexion cc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                child: Obx(() => cc.conectado
                    ? const Icon(
                        Icons.person,
                        size: 150,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.wifi_off_rounded,
                        size: 150,
                        color: Colors.white,
                      )),
              ),
              TextField(
                controller: u,
                decoration:
                    const InputDecoration(labelText: 'Ingrese el Usuario'),
              ),
              TextField(
                controller: p,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Ingrese la Contraseña'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        cc.conectado
                            ? controlu
                                .consultarUser(u.text, p.text)
                                .then((value) {
                                if (controlu.listaruser!.isNotEmpty != false) {
                                  Get.toNamed('/album');
                                } else {
                                  Get.showSnackbar(const GetSnackBar(
                                    title: 'Validacion de Usuarios',
                                    message: 'Usuario o Contraseña Invalido',
                                    icon: Icon(
                                      Icons.unpublished_rounded,
                                      color: Colors.white,
                                    ),
                                    duration: Duration(seconds: 5),
                                    backgroundColor: Colors.red,
                                  ));
                                }
                              })
                            : Get.showSnackbar(const GetSnackBar(
                                title: 'Validacion de Usuarios',
                                message: 'Usuario o Contraseña Invalido',
                                icon: Icon(
                                  Icons.wifi_off_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                duration: Duration(seconds: 5),
                                backgroundColor: Colors.green,
                              ));
                      },
                      child: const Text('Login')),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Registrarse'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
