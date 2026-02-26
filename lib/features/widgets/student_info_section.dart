import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class StudentInfoSection extends StatelessWidget {
  const StudentInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/student.jpg"),
              radius: 26,
            ),
            SizedBox(width: 8),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Farzana", style: Styles.fontText24Bold(AppColors.white)),
                SizedBox(height: 4),
                Text(
                  "Student Id:193002121",
                  style: Styles.fontText16Medium(AppColors.white),
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.red100,
          ),
          child: Icon(Icons.notifications),
        ),
      ],
    );
  }
}
