import 'package:challanges/bottomappbar.dart';
import 'package:challanges/button.dart';
import 'package:challanges/container.dart';
import 'package:challanges/navigationbar.dart';
import 'package:challanges/rowcolumn.dart';
import 'package:challanges/scaffoldt.dart';
import 'package:challanges/stacknforms.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      //home: Scaffoldt(),
      //home: MyNavigationBar(),
      //home: BottomAppBarDemo(),
      //home: MyContainer(),
      //home: RowColumn(),
      //home: MyButton(),
      home: StackForms(),
    );
  }
}
