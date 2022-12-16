// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:supriya_assignment/utills/app_colors.dart';
import 'package:supriya_assignment/utills/app_strings.dart';

class headerWidget extends StatelessWidget {
  const headerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  AppStrings.dashboardTitle,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.dullTextColor),
                ),
                Text(
                  ' Mypcot !!',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.bigTextColor),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              AppStrings.dashbaordSubTitle,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.dullTextColor),
            ),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                AppColors.gradientColor,
                AppColors.whiteColor,
              ]),
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.gradientColor, width: 1),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: AppColors.iconShadowColor)
              ]),
          child: const Center(
              child: Icon(
            Icons.search,
            size: 30,
            color: AppColors.iconColor,
          )),
        ),
      ],
    );
  }
}
