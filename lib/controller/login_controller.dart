import 'package:get/get.dart';
import 'package:shared_preference/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  late final SharedPreferences prefs;
  RxBool isSuccess = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  loginAction(String username, password) async {
    prefs = await SharedPreferences.getInstance();
    if (username == "admin" && password == "admin") {
      await prefs.setString('username', username);
      Get.off(HomePage());
      isSuccess.value = true;
    }
  }
}