import 'package:flutter/material.dart';
import '../../../../core/base/state/base_view_state.dart';
import '../../../../core/base/widget/base_view.dart';
import '../../../../core/components/button/fab/animated_fab_button.dart';
import '../../../../core/components/fields/custom_text_field.dart';
import '../../../../core/components/list_view/horizontal_list_view.dart';
import '../../../../core/entities/components/button/fab_button_item.dart';
import '../../../../core/entities/components/fields/text_field_properties.dart';
import '../../../../core/entities/components/list_views/list_view_item_model.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../core/utils/widgets/future_data_builder.dart';
import '../../../../model/fruit.dart';
import '../../../../model/category.dart';
import '../../../../core/entities/result/data_result.dart';
import '../../../../production/enum/app_colors_enum.dart';
import '../../../../production/enum/fruit_types_enum.dart';
import '../../../../production/enum/fruits_menu_pages_item.dart';
import '../../../../production/utility/SilverListDelegateWithOnlyItemCountPerRow.dart';
import '../components/fruit_card.dart';
import '../components/fruits_list_row.dart';
import '../view_model/fruits_view_model.dart';

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
