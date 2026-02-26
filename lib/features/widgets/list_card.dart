import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.skyBlue100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Notice Board",
                    style: Styles.fonttext16Bold(AppColors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Holy day for Eid-Ul-Fitar",
                    style: Styles.fonttext12Medium(AppColors.black),
                  ),
                  SizedBox(height: 10),

                  Text(
                    "2026 March 20",
                    style: Styles.fonttext12Medium(AppColors.green),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
