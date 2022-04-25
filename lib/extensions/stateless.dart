/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

extension StatelessScreenSize on StatelessWidget {
  /// screen size
  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  /// displays snackbar message
  void showSnackBar({
    required BuildContext context,
    required Text content,
    Duration? duration,
    Color? backgroundColor,
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: backgroundColor,
        action: action,
        duration: duration ?? const Duration(seconds: 4),
      ),
    );
  }
}
