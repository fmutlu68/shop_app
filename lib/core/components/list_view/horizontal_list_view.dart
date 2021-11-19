import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/components/button/impl/text_button.dart';
import 'package:fluttter_shop_app/core/entities/components/button/style_types/text_button_style.dart';
import 'package:fluttter_shop_app/core/entities/components/list_views/list_view_item_model.dart';
import 'package:fluttter_shop_app/core/extensions/border_radius_extension.dart';
import 'package:fluttter_shop_app/core/extensions/padding_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';

class HorizontalListView extends StatefulWidget {
  final void Function(ListViewItemModel model) onClicked;
  final List<ListViewItemModel> models;
  final EdgeInsetsGeometry? paddingAmongItems;
  final Color? focusedColor;
  final Color? unfocusedColor;
  final Color? selectedItemTextColor;
  final bool? shrinkWrap;
  const HorizontalListView({
    Key? key,
    required this.models,
    required this.onClicked,
    this.focusedColor,
    this.unfocusedColor,
    this.shrinkWrap,
    this.paddingAmongItems,
    this.selectedItemTextColor,
  }) : super(key: key);

  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends BaseViewState<HorizontalListView> {
  ListViewItemModel? selectedModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: context.veryLowWidthPadding,
      shrinkWrap: widget.shrinkWrap ?? false,
      itemCount: widget.models.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        ListViewItemModel model = widget.models[index];
        return Padding(
          padding: widget.paddingAmongItems ?? EdgeInsets.zero,
          child: CustomTextButton(
            text: model.name,
            onTap: () {
              setState(() {
                selectedModel = model;
              });
              widget.onClicked(model);
            },
            style: TextButtonStyle(
              margin: context.veryLowHeightPadding,
              backgroundColor: isSelectedModel(model)
                  ? widget.focusedColor ?? context.colors.onPrimary
                  : widget.unfocusedColor ?? context.colors.onSurface,
              labelStyle: isSelectedModel(model)
                  ? TextStyle(
                      color: widget.selectedItemTextColor,
                    )
                  : null,
              radius: context.veryLowRadius,
            ),
          ),
        );
      },
    );
  }

  bool isSelectedModel(ListViewItemModel model) =>
      model.name == selectedModel?.name;
}
