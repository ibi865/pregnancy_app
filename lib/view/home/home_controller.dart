import "package:get/get.dart";

class HomeController extends GetxController {
  // Example state variables
  var selectedCategory = 'All'.obs;
  var progressValue = 0.75.obs;
  
  void selectCategory(String category) {
    selectedCategory.value = category;
  }
}
