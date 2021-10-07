import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';

class IndicatorListView extends StatelessWidget {
  final int currentIndex;
  final int indicatorCount;
  final void Function(int newIndex) onIndicatorChanged;
  final Axis indicatorListDirection;
  final Color unselectedIndicatorColor;
  final Color selectedIndicatorColor;
  final Widget? Function(BuildContext, bool)? indicatorChildBuilder;
  const IndicatorListView({
    Key? key,
    required this.currentIndex,
    required this.indicatorCount,
    required this.onIndicatorChanged,
    this.indicatorListDirection = Axis.horizontal,
    this.unselectedIndicatorColor = const Color(0xff69A03A),
    this.selectedIndicatorColor = Colors.transparent,
    this.indicatorChildBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: indicatorCount,
      itemBuilder: buildIndicator,
      scrollDirection: indicatorListDirection,
    );
  }

  Widget buildIndicator(BuildContext context, int index) {
    return CircleAvatar(
      backgroundColor: currentIndex == index
          ? selectedIndicatorColor
          : unselectedIndicatorColor,
      radius: context.lowWidth,
      child:
          (indicatorChildBuilder ?? (_, __) {})(context, currentIndex == index),
    );
  }
}
