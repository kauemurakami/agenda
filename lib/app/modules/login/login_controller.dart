import 'package:agenda/app/data/model/user_model.dart';
import 'package:agenda/app/data/repository/user_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:validators/validators.dart';

class LoginController extends GetxController {

  final UserRepository repository;
  LoginController({@required this.repository}) : assert(repository != null);
 final _isEmail = false.obs;
  get isEmailCheck => this._isEmail.value;
  set isEmailCheck(value) => this._isEmail.value = value;

  final _user = UserModel().obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;

  final _obscure = true.obs;
  get obscure => this._obscure.value;
  set obscure(value) => this._obscure.value = value;

  //verificar se é usuário comum ou admin
  login() {
      //this.user;
      //verificar tipo usuario
      /*
      if(this.user.id == empresa........)
      if(this.user.id == prestador........)
      */
      //Get.offAllNamed('/');

      print('login');

      //snackbar
      print('erro ao salvar');

  }

  //onChanged
  onChangeEmail(value) {
    if (isEmail(value)) {
      this.isEmailCheck = true;
    } else
      this.isEmailCheck = false;
  }

  onSavedPassword(value) {
    this.user.senha = value;
  }
  onSavedEmail(value) {
    this.user.email = value;
  }
  emailValidate(value) {
    if (isEmail(value)) {
      return null;
    } else
      return 'Insira um email válido';
  }

  passwordValidate(value) => value.length < 5 ? null : 'Insira uma senha válida';

  showPassword() {
    if (this.obscure) {
      this.obscure = false;
    } else
      this.obscure = true;
  }
}