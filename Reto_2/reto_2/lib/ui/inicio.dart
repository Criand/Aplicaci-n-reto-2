import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Image(
              image: NetworkImage(
                  "https://panamericana.vteximg.com.br/arquivos/ids/413140-1600-1600/monitor-hp-x27-gaming-fhd-negro-195161914621.png?v=637704535217000000"))),
    );
  }
}
