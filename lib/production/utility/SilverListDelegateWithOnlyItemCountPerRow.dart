import 'package:flutter/material.dart';

class SilverListDelegateWithOnlyItemCountPerRow
    extends SliverGridDelegateWithFixedCrossAxisCount {
  SilverListDelegateWithOnlyItemCountPerRow(int itemCountPerRow)
      : super(crossAxisCount: itemCountPerRow);
}
