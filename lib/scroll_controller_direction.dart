import 'package:flutter/material.dart';

class ScrollControllDirection {
  ///The scrollUp function in the scroll_controller_direction package allows you to effortlessly scroll your Flutter app's content upwards.
  /// This function is part of a lightweight and intuitive solution to control the direction of a ScrollController.
  ///  With a single call to scrollUp, you can enhance the user experience by smoothly navigating to the top of your scrollable content.
  /// Simplify your Flutter project's scrolling actions and improve navigation fluidity.
  static void scrollUp(
    ScrollController scrollController, {
    ///By providing a [duration] object, you control the speed and smoothness of the scroll-up action.
    Duration? duration,

    /// By specifying a [curve] object, you can tailor the scrolling motion to achieve the desired visual effect.
    Curve? curve,
  }) {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: duration ?? const Duration(seconds: 1),
      curve: curve ?? Curves.easeInOut,
    );
  }

  ///The scrollDown function in the scroll_controller_direction package provides a seamless way to scroll your Flutter app's content downwards.
  /// As part of an intuitive solution for controlling the direction of a ScrollController,
  /// this function enables you to effortlessly navigate to the bottom of your scrollable content with a single call.
  ///  Enhance user interaction and streamline navigation in your Flutter project by incorporating the scrollDown function.
  static void scrollDown(
    ScrollController scrollController, {
    ///By providing a [duration] object, you control the speed and smoothness of the scroll-down action.
    Duration? duration,

    /// By specifying a [curve] object, you can tailor the scrolling motion to achieve the desired visual effect.
    Curve? curve,
  }) {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: duration ?? const Duration(seconds: 1),
      curve: curve ?? Curves.easeInOut,
    );
  }
}
