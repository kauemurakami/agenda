import 'package:agenda/app/data/provider/app_provider.dart';
import 'package:agenda/app/data/repository/empresa_repository.dart';
import 'package:agenda/app/modules/home/home_controller.dart';
import 'package:agenda/app/modules/home/screens/agenda_screen.dart';
import 'package:agenda/app/modules/home/screens/clientes_screen.dart';
import 'package:agenda/app/modules/home/screens/home_screen.dart';
import 'package:agenda/app/modules/home/screens/perfil_screen.dart';
import 'package:agenda/app/modules/home/widgets/button_navigation_widget.dart';
import 'package:agenda/app/modules/home/widgets/floating_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class EmpresaHomePage extends StatelessWidget {
//repository injection
  static final EmpresaRepository repository =
      EmpresaRepository(apiClient: ApiClient(httpClient: http.Client()));

  final List<Widget> telas = [
    HomeScreen(),
    AgendaScreen(),
    ClientesScreen(),
    PerfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<HomeController>(
          init: HomeController(repository: repository),
          builder: (_) {
            print(_.screen);
            return telas[_.screen];
          },
        ),
      ), // prestadores mais proximos
      floatingActionButton: GetX<HomeController>( builder:(_)=> CustomFloatingButton(icon: Icons.add, callback: (){})),
      bottomNavigationBar: CustomBottomNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}