import 'package:agenda/app/data/repository/empresa_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {

  final EmpresaRepository repository;

  HomeController({@required this.repository}) : assert(repository != null);

  final _screen = 0.obs;
  get screen => this._screen.value;
  set screen(value) => this._screen.value = value;

  

}
