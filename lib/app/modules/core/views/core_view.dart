import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/core/colors.dart';
import 'package:kn_fit_app/app/modules/home/views/home_view.dart';

import '../controllers/core_controller.dart';

class CoreView extends GetView<CoreController> {
  const CoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomeView(),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
    ];
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('CoreView'),
          centerTitle: true,
        ),
        extendBody: true,
        body: pages[controller.currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.berylGreen,
            elevation: 1,
            currentIndex: controller.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Treinos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfil',
              ),
            ],
            onTap: (index) {
              controller.currentIndex = index;
            },
          ),
        ),
      ),
    );
  }
}
