// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:supriya_assignment/utills/app_colors.dart';

class timeLineWidget extends StatelessWidget {
  const timeLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "December, 14 2022",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.dullTextColor),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Today',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.bigTextColor),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                AppColors.gradientColor,
                AppColors.whiteColor,
              ]),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.gradientColor, width: 1),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: AppColors.iconShadowColor)
              ]),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "TIMELINE",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColors.bigTextColor),
                ),
                Center(
                    child: Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: AppColors.iconColor,
                )),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                AppColors.gradientColor,
                AppColors.whiteColor,
              ]),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.gradientColor, width: 1),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: AppColors.iconShadowColor)
              ]),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Center(
                    child: Icon(
                  Icons.today,
                  color: AppColors.iconColor,
                )),
                SizedBox(width: 3),
                Text(
                  "DEC, 2022",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bigTextColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
