import 'package:flutter/material.dart';

class acercaDe extends StatefulWidget {
  const acercaDe({super.key});

  @override
  State<acercaDe> createState() => _acercaDeState();
}

class _acercaDeState extends State<acercaDe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.recent_actors),
            title: Text("Programadores."),
            subtitle: Text("Información"),
          ),
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text("Javid Amaris Gutierrez."),
            subtitle: Text("Nombres y Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.alternate_email_sharp),
            title: Text("ajavid@uninorte.com"),
            subtitle: Text("Email."),
          ),
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text("Cristian Prieto."),
            subtitle: Text("Nombres y Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.alternate_email_sharp),
            title: Text("apcristian@uninorte.com"),
            subtitle: Text("Email."),
          ),
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text("Jennifer Ramírez."),
            subtitle: Text("Nombres y Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.alternate_email_sharp),
            title: Text("jchitiva@uninorte.com"),
            subtitle: Text("Email."),
          ),
          ListTile(
            leading: Icon(Icons.verified_user_rounded),
            title: Text("Versión 1.0."),
            subtitle: Text("Versión"),
          ),
          ListTile(
            leading: Icon(Icons.thumb_up_alt),
            title: Text("Misión TIC y UniNorte."),
            subtitle: Text("Agradecimiento."),
          ),
        ],
      ),
    );
  }
}
