import 'package:e_store/features/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Updated current index when page scrolls
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update current index & jump to the next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index & jump to the last page
  void skipToLoginScreen() {
    Get.offAll(const LoginScreen());
  }
}
