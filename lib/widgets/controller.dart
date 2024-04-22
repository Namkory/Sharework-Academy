import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyController extends GetxController {
  var myVariable = 0.obs; // Sử dụng .obs để tạo biến Observable

  void updateVariable(int newValue) {
    myVariable.value = newValue; // Cập nhật giá trị của biến
  }
}
