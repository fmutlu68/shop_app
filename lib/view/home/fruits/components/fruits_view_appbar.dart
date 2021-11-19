part of 'package:fluttter_shop_app/view/home/fruits/view/fruits_view.dart';

extension _FruitsViewAppBar on _FruitsViewState {
  AppBar get buildAppBar => AppBar(
        backgroundColor: colorService.getColor(AppColors.PRIMARY.value),
        bottom: buildAppBarSearchField,
        title: buildAppBarContent,
      );

  ListTile get buildAppBarContent {
    return ListTile(
      title: buildAppBarTitleText,
      trailing: Icon(Icons.notifications),
      contentPadding: EdgeInsets.zero,
    );
  }

  get buildAppBarTitleText => Text(
        "Fruit Market",
        style: context.textTheme.headline5?.copyWith(
          color: context.colors.onSurface,
          fontWeight: FontWeight.bold,
        ),
      );

  PreferredSize get buildAppBarSearchField {
    return PreferredSize(
      preferredSize: Size(
        double.infinity,
        calculateDynamicHeight(8),
      ),
      child: Padding(
        padding: context.veryLowWidthPadding.add(
          EdgeInsets.only(
            bottom: 8,
          ),
        ),
        child: buildSearchField,
      ),
    );
  }

  CustomTextField get buildSearchField {
    return CustomTextField(
      textFieldProperties: TextFieldProperties(
        decoration: searchDecoration,
      ),
    );
  }

  InputDecoration get searchDecoration => InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: context.colors.onPrimary.withOpacity(0.5),
        ),
        hintText: "Search",
        filled: true,
        fillColor: context.colors.onSurface,
        focusedBorder: InputBorder.none,
      );
}
