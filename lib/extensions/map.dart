/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension MapStringExtensions on Map<dynamic, dynamic> {
  /// returns random value from map
  /// null if the map is empty
  dynamic randomValue() {
    dynamic value;
    if (values.isEmpty) {
      value = null;
    } else if (values.length == 1) {
      value = values.toList().first;
    } else {
      final Random rand = Random();
      final int index = rand.nextInt(values.toList().lastIndex());
      value = values.toList()[index];
    }
    debugPrint("randomValue value=$value");
    return value;
  }

  /// returns random kye map
  /// null if the map is empty
  dynamic randomKey() {
    if (isEmpty) {
      return null;
    } else if (length == 1) {
      return keys.toList().first;
    } else {
      final Random rand = Random();
      final int index = rand.nextInt(keys.toList().lastIndex());
      return keys.toList()[index];
    }
  }
}
