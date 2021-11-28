part of 'package:fluttter_shop_app/view/home/favorites/view/favorites_view.dart';

extension _FavoritesViewAppBar on _FavoritesViewState {
  AppBar get buildAppBar => AppBar(
        title: Text(
          "Favourites",
          style: context.textTheme.subtitle1?.copyWith(
            color: context.colors.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: colorService.getColor(AppColors.PRIMARY.value),
      );
}
