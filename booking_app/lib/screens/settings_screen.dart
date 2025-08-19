import 'package:booking_app/controllers/booking_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  BookingController controller = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.capacityTxtController,
              decoration: InputDecoration(
                hintText: 'Enter Capacity',
                labelText: 'Capacity',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: controller.priceTxtController,
              decoration: InputDecoration(
                hintText: 'Enter Price/seat',
                labelText: 'Price/seat',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.setData();
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
