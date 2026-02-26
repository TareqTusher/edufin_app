import 'package:edufin_app/const/common/common_text_field.dart';
import 'package:edufin_app/const/router/app_routes.dart';
import 'package:edufin_app/const/router/router.dart';
import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/strings.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:edufin_app/features/widgets/login_nav_section.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool toggleSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Image.asset("assets/images/institute.png"),
              SizedBox(height: 30),
              Text(
                Strings.shaheenSchool,
                style: Styles.fontText28SemiBold(AppColors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                Strings.studentPortal,
                style: Styles.fonttext14Semibold(AppColors.black),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 58),
              CommonTextFilled(
                hintText: 'name',
                onTap: () {},

                color: AppColors.textBorder,
                icon: Icons.person,
                iconSize: 20,
              ),
              SizedBox(height: 20),
              CommonTextFilled(
                hintText: 'password',
                onTap: () {},

                color: AppColors.textBorder,
                icon: Icons.lock,
                iconSize: 20,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        Strings.remember,
                        style: Styles.fonttext18SemiMdium(AppColors.black),
                      ),
                      SizedBox(width: 10),
                      Switch(
                        activeThumbColor: AppColors.white,
                        activeTrackColor: AppColors.deepSkyBlue,
                        value: toggleSwitch,
                        onChanged: (val) {
                          setState(() {
                            toggleSwitch = val;
                          });
                        },
                      ),
                    ],
                  ),

                  InkWell(
                    splashColor: AppColors.white,
                    onTap: () {},
                    child: Text(
                      Strings.lossPassword,
                      style: Styles.fonttext18SemiMdium(AppColors.deepSkyBlue)
                          .copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.deepSkyBlue,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 52),
              SizedBox(
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {

                    router.push(AppRoutesPath.studentPage);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fingerprint, color: AppColors.white, size: 22),
                      SizedBox(width: 10),
                      Text(
                        Strings.access,
                        style: Styles.fonttext18Medium(AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 48),
              Image.asset('assets/images/edufin_brand.png'),
              Text(
                Strings.nextzen,
                style: Styles.fonttext14Regular(
                  AppColors.black,
                ).copyWith(letterSpacing: 8),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoginNavSection(
                    text: Strings.ssl,
                    icon: Icons.cancel_sharp,
                    circleColor: AppColors.red100,
                    iconColor: AppColors.red,
                  ),
                  LoginNavSection(
                    text: Strings.ok,
                    icon: Icons.done,
                    circleColor: AppColors.green100,
                    iconColor: AppColors.green,
                  ),

                  LoginNavSection(
                    text: Strings.version,
                    icon: Icons.language,
                    circleColor: AppColors.green100,
                    iconColor: AppColors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
