/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension ListStringExtensions on List<String> {
  // check if this list contains another sublist
  // returns false only if no items in common, otherwise true
  bool hasCommonItemsWith(List<String> anotherList) {
    if (anotherList.isEmpty) {
      return false;
    } else {
      int occurrences = 0;
      for (final String e in anotherList) {
        if (contains(e)) occurrences++;
      }
      return occurrences != 0;
    }
  }

  /// returns random item from the list
  /// null if the list is empty
  String? random() {
    if (isEmpty) {
      return null;
    } else if (length == 1) {
      return first;
    } else {
      final Random rand = Random();
      final int index = rand.nextInt(lastIndex());
      return this[index];
    }
  }

  // check if this list contains another sublist
  // returns false only if no items in common, otherwise true
  // also returns false if both lengths doesn't match
  bool containsAnotherSublist(List<String> anotherList) {
    if (anotherList.isEmpty) {
      return false;
    } else if (anotherList.length > length) {
      return false;
    } else {
      int occurrences = 0;
      for (final String e in anotherList) {
        if (contains(e)) occurrences++;
      }
      return occurrences != 0;
    }
  }
}
