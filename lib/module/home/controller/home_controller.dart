import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int selectedCategory = 0;
  List category = [
    'Sayur',
    'Buah',
    'Daging',
    'Ayam',
    'Minuman',
    'Frozen Food',
    'Kacang'
  ];

  navigationTabView() {
    if (selectedCategory == 0) {
      return Container(
        color: Colors.green,
      );
    }
    if (selectedCategory == 1) {
      return Container(
        color: Colors.red,
      );
    }
    if (selectedCategory == 2) {
      return Container(
        color: Colors.orange,
      );
    }
    if (selectedCategory == 3) {
      return Container(
        color: Colors.purple,
      );
    }
    if (selectedCategory == 4) {
      return Container(
        color: Colors.amber,
      );
    }
    if (selectedCategory == 5) {
      return Container(
        color: Colors.grey,
      );
    }
    if (selectedCategory == 6) {
      return Container(
        color: Colors.greenAccent,
      );
    }
    return null;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
