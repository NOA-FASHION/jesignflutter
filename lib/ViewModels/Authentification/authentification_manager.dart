import 'package:get/get.dart';

import '../../Services/service_manager.dart';

class AuthenticationManager extends GetxController with CacheManager {
  final isLogged = false.obs;

  
  void logOut() async {
    await removeToken();
    isLogged.value = false;
  }

  void logIn(String? token) async {
    await saveToken(token);
    isLogged.value = true;
  }

  void checkLoginStatus() {
    final token = getToken();
    if (token != null) {
      isLogged.value = true;
    } else {
      isLogged.value = false;
    }
  }

  String? addToken(){
    final token = getToken();
    if (token != null) {
      return token;
    } else {
      return null;
    }
  }
}
