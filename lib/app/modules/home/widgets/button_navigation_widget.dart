import 'package:agenda/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        clipBehavior: Clip.hardEdge,
        shape: CircularNotchedRectangle(),
        child: GetX<HomeController>(
          builder: (_) => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _.screen,
              onTap: (index) => _.screen = index,
              fixedColor: Colors.purple,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("Home")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.import_contacts), title: Text("Agenda")),
                
                BottomNavigationBarItem(
                    icon: Icon(Icons.people_outline), title: Text("Clientes")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_pin), title: Text("Perfil")),
              ]),
        ));
  }
}
