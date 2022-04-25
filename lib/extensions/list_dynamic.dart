/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension ListDynamicExtensions on List<dynamic> {
  /// convert list of dynamic to list of string and returns it
  /// returns null on casting error occurs
  List<String>? toListString() {
    final List<String> list = [];
    bool errorCasting = false;
    try {
      for (final dynamic d in this) {
        list.add(d.toString());
      }
    } on Exception catch (_) {
      errorCasting = true;
    }
    return errorCasting ? null : list;
  }
}
