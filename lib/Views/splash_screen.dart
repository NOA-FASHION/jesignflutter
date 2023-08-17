import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ViewModels/splash_viewModel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServicesView splashScreen = SplashServicesView();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
