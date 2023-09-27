// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:shop_pts/detail.dart';
import 'package:shop_pts/home.dart';
import 'package:shop_pts/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home() ,
      debugShowCheckedModeBanner:false
    );
  }
}
