// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Khata extends StatefulWidget {
  const Khata({super.key});

  @override
  State<Khata> createState() => _KhataState();
}

class _KhataState extends State<Khata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Center(child: Text("Khata View")),
    );
  }
}
