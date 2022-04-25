/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

Widget conditionWidget({
  required bool condition,
  required Widget onTrue,
  required Widget onFalse,
}) {
  if (condition) {
    return onTrue;
  } else {
    return onFalse;
  }
}

T condition<T>({
  required bool condition,
  required T onTrue,
  required T onFalse,
}) {
  if (condition) {
    return onTrue;
  } else {
    return onFalse;
  }
}
