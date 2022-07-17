import 'package:flutter/material.dart';
import 'package:oguz_views/screens/kategoriSecilen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: secilmisKategoriScreen(),
    );
  }
}