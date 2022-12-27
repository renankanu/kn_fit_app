import 'package:get/get.dart';

class CoreController extends GetxController {
  final RxInt _currentIndex = RxInt(0);

  int get currentIndex => _currentIndex.value;

  set currentIndex(int value) => _currentIndex.value = value;
}
