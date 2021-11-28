import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/base/widget/base_view.dart';
import 'package:fluttter_shop_app/core/components/button/impl/text_button.dart';
import 'package:fluttter_shop_app/core/components/button/normal_button.dart';
import 'package:fluttter_shop_app/core/entities/components/button/style_types/text_button_style.dart';
import 'package:fluttter_shop_app/core/extensions/border_radius_extension.dart';
import 'package:fluttter_shop_app/core/extensions/padding_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/core/utils/widgets/future_data_builder.dart';
import 'package:fluttter_shop_app/model/user.dart';
import 'package:fluttter_shop_app/production/enum/app_colors_enum.dart';
import 'package:fluttter_shop_app/view/home/cart/components/basket_item_card.dart';
import 'package:fluttter_shop_app/view/home/cart/model/cart_item_model.dart';
import 'package:fluttter_shop_app/view/home/cart/view_model/cart_view_model.dart';

part '../components/cart_view_appbar.dart';
part '../components/cart_view_payment_card.dart';
part '../components/cart_view_user_address_tile.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends BaseViewState<CartView> {
  late CartViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<CartViewModel>(
      viewModel: CartViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(
        appBar: buildCartViewAppBar,
        body: Column(
          children: [
            buildUserAddressInfoCard,
            Expanded(
              child: FutureDataBuilder<List<CartItemModel>>(
                data: viewModel.getBasketItems(),
                onDataExist: (data) {
                  return ListView.separated(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return BasketItemCard(
                        basket: data[index].basket,
                        fruit: data[index].fruit,
                      );
                    },
                    separatorBuilder: (_, i) {
                      return Divider(
                        thickness: 1,
                      );
                    },
                  );
                },
                onDataNoExist: Center(
                  child: Text("Error"),
                ),
              ),
            ),
            buildPaymentCard,
          ],
        ),
      ),
      onDispose: () {},
    );
  }
}
