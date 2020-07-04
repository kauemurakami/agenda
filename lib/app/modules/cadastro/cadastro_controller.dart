import 'package:agenda/app/data/model/user_model.dart';
import 'package:agenda/app/data/repository/user_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:validators/validators.dart';

class CadastroController extends GetxController {
  final UserRepository repository;
  CadastroController({@required this.repository}) : assert(repository != null);

  final _user = UserModel().obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;

  final _isEmailCheck = false.obs;
  get isEmailCheck => this._isEmailCheck.value;
  set isEmailCheck(value) => this._isEmailCheck.value = value;

  final _obscure = true.obs;
  get obscure => this._obscure.value;
  set obscure(value) => this._obscure.value = value;

  final _pass = ''.obs;
  get pass => this._pass.value;
  set pass(value) => this._pass.value = value;
    
  onSavedPassword(value) => this.user.senha = value;
  
  onSavedEmail(value) => this.user.email = value;

  onSavedName(value) => this.user.nome = value;

  nameValidate(value) => value.length < 3 ? 'Insira um nome válido' : null ;
  
  emailValidate(value) => isEmail(value) ? null : 'Insira um email válido';

  onChangeEmail(value) => isEmail(value) ? this.isEmailCheck = true : this.isEmailCheck = false;
  
  showPassword() => this.obscure ? this.obscure = false : this.obscure = true;
  
  passwordValidate(value) {
    if (value.length > 5) {
      if (this.pass == '') {
        this.pass = value;
      } else if (value == this.pass) {
        return null;
      } else
        return 'As senhas devem ser identicas';
    } else
      return 'Insira uma senha válida';
  }

  
}