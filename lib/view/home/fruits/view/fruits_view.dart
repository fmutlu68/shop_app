import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/base/widget/base_view.dart';
import 'package:fluttter_shop_app/core/components/button/fab/animated_fab_button.dart';
import 'package:fluttter_shop_app/core/components/fields/custom_text_field.dart';
import 'package:fluttter_shop_app/core/components/list_view/horizontal_list_view.dart';
import 'package:fluttter_shop_app/core/entities/components/button/fab_button_item.dart';
import 'package:fluttter_shop_app/core/entities/components/fields/text_field_properties.dart';
import 'package:fluttter_shop_app/core/entities/components/list_views/list_view_item_model.dart';
import 'package:fluttter_shop_app/core/extensions/padding_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/core/utils/widgets/future_data_builder.dart';
import 'package:fluttter_shop_app/model/fruit.dart';
import 'package:fluttter_shop_app/model/category.dart';
import 'package:fluttter_shop_app/core/entities/result/data_result.dart';
import 'package:fluttter_shop_app/production/enum/app_colors_enum.dart';
import 'package:fluttter_shop_app/production/enum/fruit_types_enum.dart';
import 'package:fluttter_shop_app/production/utility/SilverListDelegateWithOnlyItemCountPerRow.dart';
import 'package:fluttter_shop_app/view/home/fruits/components/fruit_card.dart';
import 'package:fluttter_shop_app/view/home/fruits/components/fruits_list_row.dart';
import 'package:fluttter_shop_app/view/home/fruits/view_model/fruits_view_model.dart';

part '../components/fruits_view_appbar.dart';
part '../components/fruits_view_categories_list_view.dart';
part '../components/fruits_view_fruits_list_view.dart';
part '../components/fruits_view_bottom_appbar.dart';
part '../components/fruits_view_fab_button.dart';

class FruitsView extends StatefulWidget {
  FruitsView({Key? key}) : super(key: key);

  @override
  _FruitsViewState createState() => _FruitsViewState();
}

class _FruitsViewState extends BaseViewState<FruitsView> {
  late FruitsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<FruitsViewModel>(
      viewModel: FruitsViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(
        appBar: buildAppBar,
        body: Column(
          children: [
            buildCategoriesListView,
            buildFruitsListView,
          ],
        ),
        // bottomNavigationBar: buildBottomNaviBar,
        floatingActionButton: buildFabButton,
      ),
      onDispose: () {},
    );
  }
}
