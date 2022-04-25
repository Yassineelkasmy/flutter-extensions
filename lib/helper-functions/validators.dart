/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

/// validates email and return messages accordingly to each state
String? validatorEmail({
  required String? value,
  required String messageEmpty,
  required String messageInvalid,
}) {
  if (value == null || value.isEmpty) {
    return messageEmpty;
  } else {
    const String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final RegExp validator = RegExp(pattern);
    final bool valid = validator.hasMatch(value);
    if (valid) {
      return null;
    } else {
      return messageInvalid;
    }
  }
}

/// validates text not empty and return messages accordingly to each state
String? validatorText({
  required String? value,
  required int minLength,
  required String messageEmpty,
  required String messageTooShort,
}) {
  if (value == null || value.isEmpty) {
    return messageEmpty;
  } else if (value.length < minLength) {
    return messageTooShort;
  } else {
    return null;
  }
}

/// validates password and return messages accordingly to each state
String? validatorPassword({
  required String? value,
  required int minLength,
  required String messageEmpty,
  required String messageTooShort,
}) {
  if (value == null || value.isEmpty) {
    return messageEmpty;
  } else if (value.length < minLength) {
    return messageTooShort;
  } else {
    return null;
  }
}

/// validates phone number (without country code) and return messages
/// accordingly to each state
String? validatorPhone({
  required String? value,
  required String messageEmpty,
  required String messageInvalid,
}) {
  if (value == null || value.isEmpty) {
    return messageEmpty;
  } else if (value.length != 10) {
    return messageInvalid;
  } else {
    return null;
  }
}

/// validates phone number (without country code) and return messages
/// accordingly to each state
String? validatorPhoneInternational({
  required String? value,
  required String messageEmpty,
  required String messageInvalid,
}) {
  const String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  final RegExp regExp = RegExp(pattern);
  if (value == null || value.isEmpty) {
    return messageEmpty;
  } else if (!regExp.hasMatch(value)) {
    return messageInvalid;
  }
  return null;
}
