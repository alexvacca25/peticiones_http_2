import 'package:get/get.dart';
import 'package:peticiones_http_2/data/services/peticionesfotos.dart';

import '../models/fotos.dart';

class ControlAlbum extends GetxController {
  final Rxn<List<Fotos>> _listarfotos = Rxn<List<Fotos>>();

  Future<void> consultarFotos() async {
    _listarfotos.value = await PeticionesFotos.consultagral();
  }

  List<Fotos>? get listarfotos => _listarfotos.value;
}
