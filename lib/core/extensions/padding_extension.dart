import 'package:flutter/material.dart';
import 'dynamic_size_extension.dart';

extension PaddingExtension on BuildContext {
  EdgeInsets get veryLowWidthPadding => EdgeInsets.symmetric(
        horizontal: veryLowWidth,
      );
  EdgeInsets get lowWidthPadding => EdgeInsets.symmetric(
        horizontal: lowWidth,
      );
  EdgeInsets get normalWidthPadding => EdgeInsets.symmetric(
        horizontal: normalWidth,
      );
  EdgeInsets get mediumWidthPadding => EdgeInsets.symmetric(
        horizontal: mediumWidth,
      );
  EdgeInsets get highWidthPadding => EdgeInsets.symmetric(
        horizontal: highWidth,
      );
  EdgeInsets get veryHighWidthPadding => EdgeInsets.symmetric(
        horizontal: veryHighWidth,
      );

  EdgeInsets get veryLowHeightPadding => EdgeInsets.symmetric(
        vertical: veryLowHeight,
      );
  EdgeInsets get lowHeightPadding => EdgeInsets.symmetric(
        vertical: lowHeight,
      );
  EdgeInsets get normalHeightPadding => EdgeInsets.symmetric(
        vertical: normalHeight,
      );
  EdgeInsets get mediumHeightPadding => EdgeInsets.symmetric(
        vertical: mediumHeight,
      );
  EdgeInsets get highHeightPadding => EdgeInsets.symmetric(
        vertical: highHeight,
      );
  EdgeInsets get veryHighHeightPadding => EdgeInsets.symmetric(
        horizontal: veryHighHeight,
      );
}
