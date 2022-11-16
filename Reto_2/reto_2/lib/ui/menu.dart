import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/ControladoresGenerales/controladores.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

controladoresGenerales Control = Get.find();

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 238, 82)),
            child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://previews.123rf.com/images/sam2211/sam22111312/sam2211131200401/24607214-compras-felices-de-la-familia-siluetas-aisladas-ilustraci%C3%B3n-vectorial.jpg"),
                ),
                accountName: Text("NCR2292 Grupo2"),
                accountEmail: Text("NCR2292Grupo2@gmail.com")),
          ),
          Divider(),
          Expanded(
              child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text("Inicio",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.keyboard_double_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarPosicion(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("Comprar",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.keyboard_double_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarPosicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Mis productos",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.keyboard_double_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarPosicion(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.real_estate_agent_rounded),
                title: Text("Acerca de",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.keyboard_double_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarPosicion(3);
                },
              ),
            ],
          ))
        ],
      )),
    );
  }
}
