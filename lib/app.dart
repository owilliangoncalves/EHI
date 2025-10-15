import 'package:ehi_system/themes/texts.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: homeTitle,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
