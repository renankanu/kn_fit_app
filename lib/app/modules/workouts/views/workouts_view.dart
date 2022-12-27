import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/core/core.dart';

import '../controllers/workouts_controller.dart';

class WorkoutsView extends GetView<WorkoutsController> {
  const WorkoutsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(
        title: 'WorkoutsView',
      ),
      body: Center(
        child: Text(
          'WorkoutsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
