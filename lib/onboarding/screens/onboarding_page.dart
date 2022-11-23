import 'package:sephora_project/onboarding/widgets/onboarding_button.dart';
import 'package:sephora_project/onboarding/widgets/onboarding_help_button.dart';
import 'package:sephora_project/onboarding/widgets/language_switch.dart';
import 'package:sephora_project/onboarding/widgets/onboarding_content.dart';
import 'package:sephora_project/onboarding/widgets/onboarding_indicator.dart';
import 'package:sephora_project/onboarding/widgets/onboarding_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pictChange = PageController();
  int _currentPage = 0;

  Future<bool> setboolean(id) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setBool('id', id);
  }

  Future<bool> getboolean() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('id') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E8F6),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 66),
                          child: Text('BANK SEPHORA', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Color(0xFF2F82FF)),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 71),
                          child: FutureBuilder(
                            future: getboolean(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.done) {
                                if(snapshot.hasData) {
                                  return LanguageSwitch(
                                      isID: (isId) {
                                        setboolean(isId);
                                      },
                                      stage: (snapshot.data) ?? true,
                                  );
                                } else {
                                  return LanguageSwitch(
                                    isID: (isId) {
                                    setboolean(isId);
                                  },
                                    stage: false,
                                  );
                                }
                              } return CircularProgressIndicator();
                            }
                          )
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 58),
                      child: Row(
                        children: [
                          OnboardPict(onchange: (currentPage){
                            setState(() {
                              _currentPage = currentPage;
                            });
                          })
                        ],
                      )
                  ),
                  SizedBox(height: 30),
                  Indicator(currentPage: _currentPage),
                  SizedBox(height: 30),
                  TextIndicator(currentText: _currentPage),
                  SizedBox(height: 61),
                  OnBoardingButton(),
                  SizedBox(height: 20),
                  OnBoardingHelpButton()
                ],
              )
          )
      ),
    );
  }
}