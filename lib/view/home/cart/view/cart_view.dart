import 'package:flutter/material.dart';
import '../../../../core/base/state/base_view_state.dart';
import '../../../../core/base/widget/base_view.dart';
import '../../../../core/components/button/impl/text_button.dart';
import '../../../../core/entities/components/button/style_types/text_button_style.dart';
import '../../../../core/extensions/border_radius_extension.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../core/utils/widgets/future_data_builder.dart';
import '../../../../model/user.dart';
import '../../../../production/enum/app_colors_enum.dart';
import '../components/basket_item_card.dart';
import '../model/cart_item_model.dart';
import '../view_model/cart_view_model.dart';

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
