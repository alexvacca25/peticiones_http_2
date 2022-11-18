import 'package:get/get.dart';
import 'package:peticiones_http_2/data/services/peticioneshttp.dart';
import 'package:peticiones_http_2/domain/models/post.dart';

class ControlPost extends GetxController {
  final Rxn<List<Post>> _listarpost = Rxn<List<Post>>();

  Future<void> consultarPost() async {
    _listarpost.value = await PeticionesPost.consultagral();
  }

  List<Post>? get listarpost => _listarpost.value;
}
