import 'package:demos/core/app_export.dart';
// import 'package:demos/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    // Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInformation(connectivity));
  }
}
