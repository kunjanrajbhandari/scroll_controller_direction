import 'package:flutter/material.dart';

class ScrollControllDirection {
  ScrollController controller = ScrollController();
  ScrollControllDirection(this.controller);

  static void scrollUp(ScrollController controller) {
    controller.animateTo(
      controller.position.minScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  static void scrollDown(ScrollController controller) {
    controller.animateTo(
      controller.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
