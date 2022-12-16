// ignore_for_file: unused_import, prefer_final_fields, unused_field

import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supriya_assignment/utills/app_colors.dart';
import 'package:supriya_assignment/utills/app_strings.dart';
import 'package:supriya_assignment/widgets/customAppBarWidget.dart';
import 'package:supriya_assignment/widgets/headerWidget.dart';
import 'package:supriya_assignment/widgets/newOrderCardWidget.dart';
import 'package:supriya_assignment/widgets/timeLineWidget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            const customAppBarWidget(),
            const SizedBox(
              height: 30,
            ),
            const headerWidget(),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 180.0, autoPlay: true, aspectRatio: 1),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: AppColors.blueColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'Carousal Slider $i',
                            style: const TextStyle(
                                fontSize: 16.0, color: AppColors.whiteColor),
                          ),
                        ));
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            const timeLineWidget(),
            const SizedBox(
              height: 30,
            ),
            DatePicker(
              DateTime.now(),
              width: 60,
              height: 80,
              deactivatedColor: AppColors.gradientColor,
              dateTextStyle: const TextStyle(
                  color: AppColors.bigTextColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 19),
              dayTextStyle: const TextStyle(
                color: AppColors.greyColor,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              monthTextStyle: const TextStyle(
                color: AppColors.tealColor,
              ),
              controller: _controller,
              initialSelectedDate: DateTime.now(),
              selectionColor: AppColors.whiteColor,
              selectedTextColor: AppColors.tealColor,
              onDateChange: (date) {
                // New date selected
                setState(() {
                  _selectedValue = date;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const newOrderCardWidget(),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      )),
    );
  }
}
