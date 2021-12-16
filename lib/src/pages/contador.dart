import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class ContadorPages extends StatefulWidget {
  //...
  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<ContadorPages> {
  // ignore prefer_const_constructors
  TextStyle estiloParaTexto = TextStyle(fontSize: 20.0, color: Colors.black);
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    //...
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contador',
          style: estiloParaTexto,
        ),
      ),
      body: Center(
        child: Text(
          '$contador',
          style: estiloParaTexto,
        ),
      ),
      floatingActionButton: listadoBotones(),
    );
  }

  Widget listadoBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(child: Icon(Icons.clear), onPressed: recetear),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: sumar),
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: restar)
      ],
    );
  }

  void sumar() {
    setState(() => contador++);
  }

  void recetear() {
    setState(() => contador = 0);
  }

  void restar() {
    setState(() => contador--);
  }
}
