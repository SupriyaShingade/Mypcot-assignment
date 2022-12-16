// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:supriya_assignment/utills/app_colors.dart';

class customAppBarWidget extends StatelessWidget {
  const customAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
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
            Icons.notes,
            color: AppColors.iconColor,
          )),
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
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
                Icons.favorite,
                color: AppColors.iconColor,
              )),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 40,
              width: 40,
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
                Icons.notifications,
                color: AppColors.iconColor,
              )),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 40,
              width: 40,
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
                Icons.person,
                color: AppColors.iconColor,
              )),
            ),
          ],
        ),
      ],
    );
  }
}
