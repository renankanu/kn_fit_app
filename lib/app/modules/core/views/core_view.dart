import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/core/core.dart';

import '../../../routes/app_pages.dart';
import '../controllers/core_controller.dart';

class CoreView extends GetView<CoreController> {
  const CoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: Routes.home,
          onGenerateRoute: controller.onGenerateRoute,
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.berylGreen,
            elevation: 1,
            currentIndex: controller.currentIndex,
            backgroundColor: AppColors.steelGray,
            unselectedItemColor: AppColors.tiara,
            items: [
              const BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(AppImages.icBarbell),
                  color: AppColors.tiara,
                  height: 24,
                ),
                activeIcon: Image(
                  image: AssetImage(AppImages.icBarbell),
                  color: AppColors.berylGreen,
                  height: 26,
                ),
                label: 'Treinos',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.icHome,
                  color: AppColors.tiara,
                  height: 24,
                ),
                activeIcon: Image.asset(
                  AppImages.icHome,
                  color: AppColors.berylGreen,
                  height: 26,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.icUser,
                  color: AppColors.tiara,
                  height: 24,
                ),
                activeIcon: Image.asset(
                  AppImages.icUser,
                  color: AppColors.berylGreen,
                  height: 26,
                ),
                label: 'Perfil',
              ),
            ],
            onTap: controller.onChangePage,
          ),
        ),
      ),
    );
  }
}
