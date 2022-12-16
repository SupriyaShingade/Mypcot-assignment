// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:supriya_assignment/utills/app_colors.dart';
import 'package:supriya_assignment/utills/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class newOrderCardWidget extends StatelessWidget {
  const newOrderCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppColors.gradientColor,
            AppColors.whiteColor,
          ]),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.gradientColor, width: 1),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 5),
                color: AppColors.iconShadowColor)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  AppStrings.newOrderCardTitle,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.dullTextColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  AppStrings.newOrderCardsubTitle,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bigTextColor),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "09:00 AM",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.redTextColor),
                ),
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.east,
                  color: AppColors.redTextColor,
                  size: 17,
                )
              ],
            ),
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                color: AppColors.orangeColor,
                shape: BoxShape.circle,
              ),
              child: const Center(
                  child: Icon(
                Icons.file_open,
                size: 50,
                color: AppColors.whiteColor,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
