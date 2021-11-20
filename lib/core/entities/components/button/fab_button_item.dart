import 'package:flutter/material.dart';

class FabButtonItem {
  final String? tooltip;
  final Icon icon;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  FabButtonItem(this.icon, this.onPressed,
      {this.tooltip, this.backgroundColor});
}
