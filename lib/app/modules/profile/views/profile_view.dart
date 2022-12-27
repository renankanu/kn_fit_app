import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/core/core.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(
        title: 'Profile',
        isShowBackButton: false,
      ),
      body: Center(
        child: Text(
          'ProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
