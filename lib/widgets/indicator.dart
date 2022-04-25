/// Created by AYOUB EL KHATAB
/// last modified on 12-04-2022

part of '../extensions.dart';

enum IndicatorDirection { horizontal, vertical }

class Indicator extends StatelessWidget {
  final double? width;
  final double? thickness;
  final Color? color;
  final double? cornersRadius;
  final double? marginVertical;
  final double? marginHorizontal;
  final IndicatorDirection? orientation;

  const Indicator({
    Key? key,
    final this.width,
    final this.thickness,
    final this.color,
    final this.cornersRadius,
    final this.orientation,
    final this.marginVertical,
    final this.marginHorizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: (orientation != null && orientation == IndicatorDirection.vertical)
          ? math.pi / 2
          : 0,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width * .1,
        margin: EdgeInsets.symmetric(
          vertical: marginVertical ?? 10,
          horizontal: marginHorizontal ?? 0,
        ),
        height: thickness ?? 4,
        decoration: BoxDecoration(
          color: color ?? Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(
              cornersRadius ?? 4,
            ),
          ),
        ),
      ),
    );
  }
}
