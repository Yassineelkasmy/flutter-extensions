/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

class FutureWidget extends StatelessWidget {
  final Widget loading;
  final Widget Function<T>(AsyncSnapshot<T>) loaded;
  final Future future;

  const FutureWidget({
    Key? key,
    required this.loading,
    required this.loaded,
    required this.future,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.ready) {
          return loaded(snapshot);
        } else {
          return loading;
        }
      },
    );
  }
}
