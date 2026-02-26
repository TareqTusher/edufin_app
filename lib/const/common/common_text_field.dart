import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class CommonTextFilled extends StatelessWidget {
  const CommonTextFilled({
    super.key,
    required this.hintText,
    this.icon,
    this.color = AppColors.black,
    this.iconSize = 18,
    required this.onTap,
    this.controller,
    this.errorText,
  });
  final String hintText;
  final IconData? icon;
  final Color? color;
  final double? iconSize;
  final VoidCallback onTap;
  final TextEditingController? controller;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      decoration: InputDecoration(
        errorText: errorText,
        prefixIcon: icon == null
            ? null
            : Icon(icon, size: iconSize!, color: AppColors.black),
        hintText: hintText,
        hintStyle: Styles.fonttext16Semibold(AppColors.black),
        fillColor: AppColors.white,

        //filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: color!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),

          borderSide: BorderSide(color: color!),
        ),
      ),
    );
  }
}
