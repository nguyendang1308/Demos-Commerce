import 'package:demos/pages/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => const OnboardingScreen());
  }
}
