import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/core/core.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.loginThree),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'LoginView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
