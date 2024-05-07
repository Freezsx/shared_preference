import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preference/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  LoginController loginController = Get.put(LoginController());

  Widget myText(
      String label, bool isObsecure, TextEditingController myController) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: myController,
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            myText('username', false, ctrUsername),
            myText('password', true, ctrPassword),
            ElevatedButton(onPressed: () =>
                loginController.loginAction(ctrUsername.text, ctrPassword.text),
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}