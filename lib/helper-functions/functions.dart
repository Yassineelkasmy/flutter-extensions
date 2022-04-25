/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

Future<void> delay({
  int? seconds,
  int? millis,
}) =>
    Future.delayed(
      Duration(
        seconds: seconds ?? 0,
        milliseconds: millis ?? 0,
      ),
    );
