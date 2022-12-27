import 'dart:developer';

import 'package:get/get.dart';

class WorkoutsController extends GetxController {
  final RxInt _currentIndex = RxInt(0);

  int get currentIndex => _currentIndex.value;

  set currentIndex(int value) => _currentIndex.value = value;

  @override
  void onInit() {
    log('WorkoutsController onInit');
    currentIndex = 1;
    super.onInit();
  }
}
