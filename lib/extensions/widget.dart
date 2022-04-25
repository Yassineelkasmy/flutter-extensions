/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension PaddingsExtensions on Widget {
  /// wraps the widget within and Expanded widget if the condition is met
  Widget expandIf(bool condition, {int? flex}) {
    if (condition) {
      return Expanded(
        flex: flex ?? 1,
        child: this,
      );
    } else {
      return this;
    }
  }

  /// wraps the widget within and Expanded widget
  Widget expand({int? flex}) {
    return Expanded(
      flex: flex ?? 1,
      child: this,
    );
  }

  /// adds padding from all sides to a widget
  Widget paddingAll(double? value) {
    return Padding(
      padding: EdgeInsets.all(value ?? 0),
      child: this,
    );
  }

  /// make it flexible
  Widget makeItFlexible({int? flex}) {
    return Flexible(
      flex: flex ?? 1,
      child: this,
    );
  }

  /// adds padding only from some sides to a widget
  Widget paddingOnly({
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        left: left ?? 0,
        right: right ?? 0,
      ),
      child: this,
    );
  }

  /// adds symmetric padding to a widget
  Widget paddingSymmetric({double? horizontal, double? vertical}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      ),
      child: this,
    );
  }

  /// align
  Widget align({required Alignment alignment}) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  /// centers a widget
  Widget center() {
    return Center(
      child: this,
    );
  }
}
