import 'package:agenda/app/modules/cadastro/cadastro_page.dart';
import 'package:agenda/app/modules/home/home_page.dart';
import 'package:agenda/app/modules/login/login_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {

  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> HomePage(),),
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(),),
    GetPage(name: Routes.CADASTRO, page:()=> CadastroPage(),)
  ];
}