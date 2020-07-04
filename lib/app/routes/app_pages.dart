import 'package:agenda/app/modules/cadastro/cadastro_page.dart';
import 'package:agenda/app/modules/home/home_page.dart';
import 'package:agenda/app/modules/login/login_page.dart';
import 'package:agenda/app/modules/recuperar-senha/recuperar_senha_page.dart';
import 'package:agenda/app/modules/splash/splash_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> SplashPage(),),
    GetPage(name: Routes.HOME, page:()=> EmpresaHomePage(),),
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(),),
    GetPage(name: Routes.CADASTRO, page:()=> CadastroPage(),),
    GetPage(name: Routes.RECUPERAR_SENHA, page:()=> RecuperarSenhaPage(),)
  ];
}