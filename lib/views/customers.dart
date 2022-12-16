// ignore_for_file: prefer_const_constructors, unused_import

import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Customers View"),
    ));
  }
}
