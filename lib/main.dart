import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("My first flutter"),
      centerTitle: true,
    ),
    body: Center(
      child: Text("hello!"),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text("click"),
    ),
  ),
));

