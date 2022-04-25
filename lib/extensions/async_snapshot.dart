/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension AsyncSnapshotExtensions on AsyncSnapshot<Object?> {
  /// checks either snap has data and connectionState is Done
  bool get ready => hasData && connectionState == ConnectionState.done;

  /// checks either connectionState is Done
  bool get connectionDone => connectionState == ConnectionState.done;
}
