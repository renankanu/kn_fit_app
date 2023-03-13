import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/core/core.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  AppImages.icNotification,
                  height: 24,
                  color: AppColors.tiara,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text(
                  'Olá,',
                  style: TextStyle(
                    color: AppColors.tiara,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ' Renan',
                  style: TextStyle(
                    color: AppColors.tiara,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ItemHome(
                  label: 'Treinos',
                  icon: AppImages.icBarbell,
                ),
                ItemHome(
                  label: 'Perfil',
                  icon: AppImages.icUser,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ItemHome(
                  label: 'Favoritos',
                  icon: AppImages.icFavorite,
                ),
                ItemHome(
                  label: 'Avaliações',
                  icon: AppImages.icNotification,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemHome extends StatelessWidget {
  const ItemHome({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.berylGreen),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: const TextStyle(color: AppColors.berylGreen)),
          const SizedBox(height: 10),
          Image.asset(
            icon,
            height: 24,
            color: AppColors.berylGreen,
          ),
        ],
      ),
    );
  }
}
