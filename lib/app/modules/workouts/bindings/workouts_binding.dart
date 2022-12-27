import 'package:get/get.dart';

import '../controllers/workouts_controller.dart';

class WorkoutsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkoutsController>(
      () => WorkoutsController(),
    );
  }
}
