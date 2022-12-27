import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kn_fit_app/app/core/core.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.loginThree),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 100),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            GlassMorphism(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: AppColors.osloGray,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(
                          color: AppColors.osloGray,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    BaseButton(
                      label: 'Entrar',
                      onPressed: () {
                        Get.toNamed(Routes.core);
                      },
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Esqueceu a senha?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffcde7be),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColors.osloGray,
                            thickness: 1,
                          ),
                        ),
                        const Text(
                          '  Ou  ',
                          style: TextStyle(
                            color: AppColors.osloGray,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColors.osloGray,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 32),
                    RichText(
                      text: const TextSpan(
                        text: 'Não tem uma conta? ',
                        style: TextStyle(
                          color: AppColors.osloGray,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: 'Cadastre-se',
                            style: TextStyle(
                              color: AppColors.berylGreen,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
