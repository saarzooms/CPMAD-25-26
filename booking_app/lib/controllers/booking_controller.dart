import 'package:booking_app/screens/booking_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BookingController extends GetxController {
  RxInt capacity = 0.obs;
  RxDouble price = 0.0.obs;
  TextEditingController capacityTxtController = TextEditingController();
  TextEditingController priceTxtController = TextEditingController();
  void setData() {
    try {
      capacity.value = int.parse(capacityTxtController.text);
      price.value = double.parse(priceTxtController.text);
      Get.to(BookingScreen());
    } catch (e) {
      print(e);
    }
  }
}
