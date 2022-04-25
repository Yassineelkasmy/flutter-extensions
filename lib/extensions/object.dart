/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension ObjectExtensions on Object? {
  bool get isNull => this == null;
  bool get isNotNull => this != null;
}
