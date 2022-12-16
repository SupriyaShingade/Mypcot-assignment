// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:supriya_assignment/utills/app_colors.dart';
import 'package:supriya_assignment/views/customers.dart';
import 'package:supriya_assignment/views/dashboard.dart';
import 'package:supriya_assignment/views/khata.dart';
import 'package:supriya_assignment/views/orders.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  var isSelected = 0;
  var views = const [
    Dashboard(),
    Customers(),
    Khata(),
    Orders(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          backgroundColor: AppColors.centerbtnColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: views[isSelected],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width / 1,
          child: Row(children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 0;
                });
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                color: AppColors.whiteColor,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      isSelected == 0
                          ? const Icon(Icons.home)
                          : const Icon(Icons.home_outlined),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: isSelected == 0
                                ? FontWeight.bold
                                : FontWeight.w500),
                      )
                    ])),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 1;
                });
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                color: AppColors.whiteColor,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      isSelected == 1
                          ? const Icon(Icons.group)
                          : const Icon(Icons.group_outlined),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Customers',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: isSelected == 1
                                ? FontWeight.bold
                                : FontWeight.w500),
                      )
                    ])),
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
              color: Colors.white,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 2;
                });
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                color: AppColors.whiteColor,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      isSelected == 2
                          ? const Icon(Icons.save)
                          : const Icon(Icons.save_alt),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Khata',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: isSelected == 2
                                ? FontWeight.bold
                                : FontWeight.w500),
                      )
                    ])),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 3;
                });
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                color: AppColors.whiteColor,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      isSelected == 3
                          ? const Icon(Icons.group)
                          : const Icon(Icons.group_outlined),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: isSelected == 3
                                ? FontWeight.bold
                                : FontWeight.w500),
                      )
                    ])),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
