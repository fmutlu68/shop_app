part of 'package:fluttter_shop_app/view/home/fruit_detail/view/fruit_detail_view.dart';

extension _FruitDetailViewAppBar on _FruitDetailViewState {
  AppBar get buildAppBar => AppBar(
        backgroundColor: colorService.getColor(AppColors.PRIMARY.value),
        leading: buildBackButton,
        title: Text("DETAILS"),
        leadingWidth: 30,
        toolbarHeight: calculateDynamicHeight(9),
      );
  Padding get buildBackButton {
    return Padding(
      padding: context.veryLowWidthPadding,
      child: IconButton(
        onPressed: () => navigationService.popWidget(),
        icon: Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
