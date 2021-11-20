import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/entities/components/button/fab_button_item.dart';

class AnimatedFabButton extends StatefulWidget {
  final double fabMenuHeight;
  final Color focusedColor, unfocusedColor;
  final Axis listDirection;
  final Curve fabMenuItemsCurve;
  final List<FabButtonItem> items;
  AnimatedFabButton({
    Key? key,
    required this.focusedColor,
    required this.unfocusedColor,
    required this.items,
    this.listDirection = Axis.vertical,
    this.fabMenuHeight = 56,
    this.fabMenuItemsCurve = Curves.easeOut,
  }) : super(key: key);

  @override
  _AnimatedFabButtonState createState() => _AnimatedFabButtonState();
}

class _AnimatedFabButtonState extends State<AnimatedFabButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> fabAnimation, fabMenuItemsTranslate;
  late Animation<Color?> fabButtonColor;
  late AnimationController fabController;
  bool isOpened = false;

  @override
  void initState() {
    super.initState();
    fabController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    fabController.addListener(() {
      setState(() {});
    });
    fabAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(fabController);
    fabButtonColor =
        ColorTween(begin: widget.unfocusedColor, end: widget.focusedColor)
            .animate(
      CurvedAnimation(
        parent: fabController,
        curve: Interval(
          0.00,
          1.00,
          curve: Curves.linear,
        ),
      ),
    );
    fabMenuItemsTranslate = Tween<double>(begin: 56.0, end: -14.0).animate(
      CurvedAnimation(
        parent: fabController,
        curve: Interval(
          0.0,
          0.75,
          curve: widget.fabMenuItemsCurve,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    fabController.dispose();
  }

  animate() {
    if (!isOpened) {
      fabController.forward();
    } else {
      fabController.reverse();
    }
    isOpened = !isOpened;
  }

  @override
  Widget build(BuildContext context) {
    return widget.listDirection == Axis.horizontal
        ? buildHorizontalList()
        : buildVerticalList();
  }

  Container get closeButton => Container(
        child: FloatingActionButton(
          onPressed: animate,
          backgroundColor: fabButtonColor.value,
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: fabAnimation,
          ),
        ),
      );

  Container buildFabMenuButton(FabButtonItem item) {
    return Container(
      child: FloatingActionButton(
        onPressed: item.onPressed,
        child: item.icon,
        backgroundColor: item.backgroundColor,
        tooltip: item.tooltip,
      ),
    );
  }

  Transform buildVerticalButton(double percent, FabButtonItem item) {
    return Transform(
      transform: Matrix4.translationValues(
        0,
        fabMenuItemsTranslate.value * percent,
        0,
      ),
      child: buildFabMenuButton(item),
    );
  }

  Transform buildHorizontalButton(double percent, FabButtonItem item) {
    return Transform(
      transform: Matrix4.translationValues(
        fabMenuItemsTranslate.value * percent,
        0, // vertical
        fabMenuItemsTranslate.value * percent,
      ),
      child: buildFabMenuButton(item),
    );
  }

  Widget buildHorizontalList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ...buildFabMenuHorizontalItems,
        closeButton,
      ],
    );
  }

  Widget buildVerticalList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ...buildFabMenuVerticalItems,
        closeButton,
      ],
    );
  }

  List<Widget> get buildFabMenuVerticalItems {
    List<Widget> items = [];
    for (var i = 0; i < widget.items.length; i++) {
      items.add(
        buildVerticalButton(
          (widget.items.length - i).toDouble(),
          widget.items[i],
        ),
      );
    }
    return items;
  }

  List<Widget> get buildFabMenuHorizontalItems {
    List<Widget> items = [];
    for (var i = 0; i < widget.items.length; i++) {
      print("$i ${widget.items[i].tooltip}");
      items.add(
        buildHorizontalButton(
          (widget.items.length - i).toDouble(),
          widget.items[i],
        ),
      );
    }
    return items;
  }
}
