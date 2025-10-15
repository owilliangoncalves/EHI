import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String homeTitle;
  const HomeScreen({super.key, required this.homeTitle});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
