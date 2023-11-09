import 'package:flutter/material.dart';

class ScrollControllDirection {
  static void scrollUp(ScrollController scrollController,
      {Duration? duration, Curve? curve}) {
    ///The scrollUp function in the scroll_controller_direction package allows you to effortlessly scroll your Flutter app's content upwards.
    /// This function is part of a lightweight and intuitive solution to control the direction of a ScrollController.
    ///  With a single call to scrollUp, you can enhance the user experience by smoothly navigating to the top of your scrollable content.
    /// Simplify your Flutter project's scrolling actions and improve navigation fluidity.
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: duration ?? const Duration(seconds: 1),
      curve: curve ?? Curves.easeInOut,
    );
  }

  static void scrollDown(ScrollController scrollController,
      {Duration? duration, Curve? curve}) {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: duration ?? const Duration(seconds: 1),
      curve: curve ?? Curves.easeInOut,
    );
  }
}
