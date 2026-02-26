import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class LoginNavSection extends StatelessWidget {
  const LoginNavSection({super.key, required this.text, required this.icon, required this.circleColor, required this.iconColor});
  final String text;
  final IconData icon;
 final Color circleColor,iconColor;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: circleColor,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 12, color:iconColor),
        ),
        SizedBox(width: 4),
        Text(
          text,
          style: Styles.fonttext12Regular(AppColors.black),
        ),
      ],
    );
  }
}
