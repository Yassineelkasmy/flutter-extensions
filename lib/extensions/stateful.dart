/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension StatefulScreenSize on StatefulWidget {
  /// screen size
  Size? screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
