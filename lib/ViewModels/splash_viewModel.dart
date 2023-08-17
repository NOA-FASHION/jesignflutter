import 'dart:async';


import 'package:get/get.dart';

import 'Authentification/authentification_manager.dart';

class SplashServicesView  {
  final AuthenticationManager _authmanager = Get.put(AuthenticationManager());

  Future<void> initializedSetting() async {
    _authmanager.checkLoginStatus();
    await Future.delayed(const Duration(seconds: 3));
  }
  void isLogin() async {
    await initializedSetting();
    
    if (_authmanager.isLogged.value) {
      Timer(const Duration(seconds: 3), () => Get.toNamed('/home_view'));
    } else {
      Timer(const Duration(seconds: 3), () => Get.toNamed('/login_view'));
    }
  }


}
