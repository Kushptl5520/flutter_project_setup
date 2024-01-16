import 'package:get/get.dart';
import 'connection_manager.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectionManagerController>(
            () => ConnectionManagerController()
    );
  }
}