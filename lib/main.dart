import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: 'Kn Fit',
      initialRoute: AppPages.initial,
      theme: AppTheme.theme,
      getPages: AppPages.routes,
    ),
  );
}
