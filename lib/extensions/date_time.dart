/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension DateTimeExtensions on DateTime {
  static const String patternDateOnly = "yyyy-MM-dd";
  static const String patternDateTime = "yyyy-MM-dd HH:mm:ss";
  static const String patternTimeOnly = "HH:mm:ss";

  String formatToString(String pattern) {
    return DateFormat(pattern).format(this);
  }

  DateTime parseTimestamp(Timestamp ts) {
    return DateTime.fromMillisecondsSinceEpoch(ts.millisecondsSinceEpoch);
  }
}
