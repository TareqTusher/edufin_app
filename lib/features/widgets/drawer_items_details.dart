import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class DrawerItemsDetails extends StatelessWidget {
  const DrawerItemsDetails({super.key, required this.text, this.onTap, this.icon});
  final String text;
  final VoidCallback?onTap;
  final IconData?icon;
  


  @override
  Widget build(BuildContext context) {
    //bool isExpanded;
    return Row(
      children: [
        CircleAvatar(radius: 4, backgroundColor: AppColors.deepSkyBlue),
        SizedBox(width: 10),
        Text(text, style: Styles.fontText12Bold(AppColors.grey)),
        SizedBox(width: 10),
        InkWell(
          onTap: onTap,
          child: Icon(icon, size: 20, color: AppColors.grey)),
      ],
    );
  }
}
