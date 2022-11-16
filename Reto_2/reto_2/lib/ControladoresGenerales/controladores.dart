import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:reto_2/clases/productos.dart';

class controladoresGenerales extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        1,
        "Google ChromeCast 3",
        "https://panamericana.vteximg.com.br/arquivos/ids/337020-1600-1600/google-chromecast-3-2-193575001371.jpg?v=637056509744400000",
        0,
        150000));
    pro.add(productos(
        3,
        "Monitor",
        "https://panamericana.vteximg.com.br/arquivos/ids/461466-1600-1600/monitor-acer-vg242y-pbmiipx-23-8-ips-freesync-negro-4710886241614.jpg?v=638008429829570000",
        0,
        900000));
    pro.add(productos(
        3,
        "Teclado, Mouse y Auriculares Gamer",
        "https://panamericana.vteximg.com.br/arquivos/ids/327962-1600-1600/combo-4-en-1-gamer-trust-ziva-teclado-audifono-mouse-pad-mouse--1-8713439223125.jpg?v=636972485645700000",
        0,
        100000));
    pro.add(productos(
        3,
        "Silla Gamer",
        "https://panamericana.vteximg.com.br/arquivos/ids/415608-1600-1600/silla-gamer-zerg-negra-con-rojo-7453039009408.jpg?v=637719814950430000",
        0,
        700000));
    pro.add(productos(
        3,
        "Cámara Web Logitechh C-270",
        "https://panamericana.vteximg.com.br/arquivos/ids/320702-1600-1600/camara-web-logitech-c-270-97855067975.jpg?v=636922554936830000",
        0,
        130000));
    pro.add(productos(
        3,
        "Impresora Multifuncional Hp Deskjet Ink Advantage 2775 (7fr21a)",
        "https://panamericana.vteximg.com.br/arquivos/ids/430897-1600-1600/impresora-multifuncional-hp-deskjet-ink-advantage-2775-7fr21a--194441901870.jpg?v=637823646799770000",
        0,
        300000));
    // TODO: implement onInit
    super.onInit();
  }

  void cambiarPosicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total += pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

  void limpiarTodos() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
