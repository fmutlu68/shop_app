part of 'package:fluttter_shop_app/view/home/cart/view/cart_view.dart';

extension _CartViewUserAddressTile on _CartViewState {
  Card get buildUserAddressInfoCard {
    User user = viewModel.getLoginedUser();
    return Card(
      child: ListTile(
        leading: Icon(Icons.location_on),
        title: Text(
          (user.address ?? "").substring(
            0,
            (user.address?.length ?? 0) > 20 ? 20 : (user.address?.length ?? 0),
          ),
        ),
        trailing: CustomTextButton(
          onTap: () {},
          text: "Change Address",
          style: TextButtonStyle(
            backgroundColor: Colors.transparent,
            labelStyle: context.textTheme.caption?.copyWith(
              color: Colors.blueAccent,
            ),
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
