import 'package:get/get.dart';
import 'package:shared_preference/pages/home_page.dart';
import 'package:shared_preference/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 3), () async {
      if (prefs.getString('username') == null) {
        Get.off(LoginPage());
      }else {
        Get.off(HomePage());
      }
    });
  }
}