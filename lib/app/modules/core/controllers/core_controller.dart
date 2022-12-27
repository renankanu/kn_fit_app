import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/modules/home/views/home_view.dart';
import 'package:kn_fit_app/app/modules/profile/views/profile_view.dart';
import 'package:kn_fit_app/app/modules/workouts/views/workouts_view.dart';

import '../../../routes/app_pages.dart';
import '../../home/bindings/home_binding.dart';
import '../../profile/bindings/profile_binding.dart';
import '../../workouts/bindings/workouts_binding.dart';

class CoreController extends GetxController {
  final RxInt _currentIndex = RxInt(0);

  int get currentIndex => _currentIndex.value;

  set currentIndex(int value) => _currentIndex.value = value;

  final pages = <String>[Routes.home, Routes.workouts, Routes.profile];

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return GetPageRoute(
          settings: settings,
          page: () => const HomeView(),
          binding: HomeBinding(),
        );
      case Routes.profile:
        return GetPageRoute(
          settings: settings,
          page: () => const ProfileView(),
          binding: ProfileBinding(),
        );
      case Routes.workouts:
        return GetPageRoute(
          settings: settings,
          page: () => const WorkoutsView(),
          binding: WorkoutsBinding(),
        );
      default:
        return null;
    }
  }

  void onChangePage(int index) {
    if (index == _currentIndex.value) return;
    _currentIndex.value = index;
    Get.offNamedUntil(
      pages[index],
      (page) => page.settings.name == Routes.core,
      id: 1,
    );
  }
}
