import 'package:flutter/material.dart';
import '../../extensions/border_radius_extension.dart';
import '../../extensions/dynamic_size_extension.dart';
import '../../extensions/padding_extension.dart';

class BottomBarIconButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? iconSize;
  final Color? selectedColor;
  final bool isSelected;
  final IconData unSelectedIcon;
  final IconData? selectedIcon;
  final VoidCallback onClicked;
  final Widget? rightTopWidget;
  const BottomBarIconButton({
    required this.unSelectedIcon,
    required this.isSelected,
    required this.onClicked,
    this.width,
    this.height,
    this.selectedColor,
    this.selectedIcon,
    this.iconSize,
    this.rightTopWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: rightTopWidget == null
          ? InkWell(
              onTap: onClicked,
              child: buildItemContent(context),
            )
          : ClipRRect(
              borderRadius: context.lowRadius,
              child: Stack(
                children: [
                  InkWell(
                    onTap: onClicked,
                    child: buildItemContent(context),
                  ),
                  Positioned(
                    child: rightTopWidget!,
                    left: context.calculateDynamicWidth(15),
                    top: context.calculateDynamicHeight(3),
                  )
                ],
              ),
            ),
    );
  }

  Container buildItemContent(BuildContext context) {
    return Container(
      padding: context.lowWidthPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            thickness: 1,
            color: isSelected ? selectedColor : Colors.transparent,
          ),
          SizedBox(
            height: context.calculateDynamicHeight(2),
          ),
          Icon(
            isSelected && selectedIcon != null ? selectedIcon : unSelectedIcon,
            color: isSelected ? selectedColor : null,
            size: iconSize,
          ),
        ],
      ),
    );
  }
}
