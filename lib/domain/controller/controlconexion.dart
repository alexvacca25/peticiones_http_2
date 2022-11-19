import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ControlConexion extends GetxController {
  final _conectado = false.obs;
  set connectivity(ConnectivityResult connectivity) {
    _conectado.value = connectivity != ConnectivityResult.none;
  }

  bool get conectado => _conectado.value;
}
