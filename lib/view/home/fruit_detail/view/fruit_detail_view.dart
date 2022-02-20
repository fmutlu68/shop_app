import 'package:flutter/material.dart';
import '../../../../core/base/state/base_view_state.dart';
import '../../../../core/base/widget/base_view.dart';
import '../../../../core/components/button/impl/text_button.dart';
import '../../../../core/entities/components/button/style_types/text_button_style.dart';
import '../../../../core/extensions/border_radius_extension.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/extensions/spacer_extension.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../core/utils/widgets/future_data_builder.dart';
import '../../../../model/fruit.dart';
import '../../../../model/nutrition.dart';
import '../../../../production/enum/app_colors_enum.dart';
import '../components/nutrition_item_tile.dart';
import '../view_model/fruit_detail_view_model.dart';

part '../components/fruit_detail_view_appbar.dart';
part '../components/fruit_detail_view_fruit_image_view.dart';
part '../components/fruit_detail_view_fruit_detail_texts.dart';
part '../components/fruit_detail_view_price_info_row.dart';

class FruitDetailView extends StatefulWidget {
  final Fruit fruit;
  FruitDetailView({Key? key, required this.fruit}) : super(key: key);

  @override
  _FruitDetailViewState createState() => _FruitDetailViewState();
}

class _FruitDetailViewState extends BaseViewState<FruitDetailView> {
  late FruitDetailViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<FruitDetailViewModel>(
      viewModel: FruitDetailViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(
        appBar: buildAppBar,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.veryLowWidthPadding.horizontal,
            vertical: calculateDynamicHeight(1),
          ),
          child: ListView(
            children: [
              buildImageContainer,
              context.veryLowHeightSpacer,
              buildFruitTitleText,
              buildFruitSubtitleText,
              context.veryLowHeightSpacer,
              buildFruitNutritionTitleText,
              buildNutritionsList,
              buildPriceInfoCard,
            ],
          ),
        ),
      ),
      onDispose: () {},
    );
  }
}
