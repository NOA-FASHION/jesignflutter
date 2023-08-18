import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ViewModels/splash_viewModel.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashView> {
  SplashServicesView splashScreen = SplashServicesView();

  @override
  void initState() {
    super.initState();
    splashScreen.initializedSetting();
    splashScreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Text(
        'welcome_back'.tr,
        textAlign: TextAlign.center,
      )),
    );
  }
}
