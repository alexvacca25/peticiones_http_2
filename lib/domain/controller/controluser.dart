import 'package:get/get.dart';
import 'package:peticiones_http_2/data/services/peticionesuser.dart';
import 'package:peticiones_http_2/domain/models/user.dart';

class ControlUser extends GetxController {
  final Rxn<List<User>> _listaruser = Rxn<List<User>>();

  Future<void> consultarUser(String u, String p) async {
    _listaruser.value = await PeticionesUser.validaruser(u, p);
  }

  List<User>? get listaruser => _listaruser.value;
}
