import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class FeeManagement extends StatelessWidget {
  const FeeManagement({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      AppColors.skyBlue100,
      AppColors.amber100,

      AppColors.skyBlue100,
      AppColors.amber100,
    ];
    List<Color> textColors = [
      AppColors.deepSkyBlue,
      AppColors.amber,

      AppColors.deepSkyBlue,
      AppColors.amber,
    ];
    List<String> text = [
      "Collect Fees & Invoice",
      "Due Fees Invoince",

      "Offline Payment",

      "Fees Configuration",
    ];
    return ListView.builder(
      shrinkWrap: true,
      
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colors[index],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:  16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 84,
                    width: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: textColors[index],
                    ),
                    child: Icon(
                      Icons.attach_money,
                      size: 24,
                      color: AppColors.white,
                    ),
                  ),
                  Text(text[index], style: Styles.fontText16Medium(textColors[index]),)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
