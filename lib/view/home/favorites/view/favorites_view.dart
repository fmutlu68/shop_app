import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/base/widget/base_view.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/core/utils/widgets/future_data_builder.dart';
import 'package:fluttter_shop_app/model/fruit.dart';
import 'package:fluttter_shop_app/production/enum/app_colors_enum.dart';
import 'package:fluttter_shop_app/view/home/favorites/components/favorite_fruit_item_card.dart';
import 'package:fluttter_shop_app/view/home/favorites/view_model/favorites_view_model.dart';

part '../components/favorites_view_app_bar.dart';
part '../components/favorites_view_favorites_list.dart';

class FavoritesView extends StatefulWidget {
  FavoritesView({Key? key}) : super(key: key);

  @override
  _FavoritesViewState createState() => _FavoritesViewState();
}

class _FavoritesViewState extends BaseViewState<FavoritesView> {
  late FavoritesViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<FavoritesViewModel>(
      viewModel: FavoritesViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(
        appBar: buildAppBar,
        body: buildFavoritesList,
      ),
      onDispose: () {},
    );
  }
}
