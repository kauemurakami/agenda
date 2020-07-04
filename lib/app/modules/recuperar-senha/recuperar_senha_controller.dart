import 'package:agenda/app/data/repository/user_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:validators/validators.dart';

class RecuperarSenhaController extends GetxController {
  final UserRepository repository;
  RecuperarSenhaController({@required this.repository})
      : assert(repository != null);

  final _isEmail = false.obs;
  get isEmailCheck => this._isEmail.value;
  set isEmailCheck(value) => this._isEmail.value = value;

  final _email = ''.obs;
  get email => this._email.value;
  set email(value) => this._email.value = value;

  onChangeEmail(value) {
    print('onchange');
    if (isEmail(value)) {
      this.isEmailCheck = true;
    } else
      this.isEmailCheck = false;
  }

  enviarEmailRecuperacao(){
    //this.email ...
  }
  
//onSaved
  onSavedEmail(value) {
    this.email = value;
  }

  emailValidate(value) {
    if (isEmail(value)) {
      return null;
    } else
      return 'Insira um email válido';
  }
}