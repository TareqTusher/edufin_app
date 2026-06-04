import 'package:edufin_app/const/theme/colors.dart';
import 'package:flutter/material.dart';

class NavItemsIcon extends StatelessWidget {
  const NavItemsIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.green100,
        ),

        child: Icon(icon, size: 24, color: AppColors.green),
      ),
    );
  }
}
