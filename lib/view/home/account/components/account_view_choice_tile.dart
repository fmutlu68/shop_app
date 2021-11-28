part of 'package:fluttter_shop_app/view/home/account/view/account_view.dart';

extension _AccountViewChoiceTile on _AccountViewState {
  ListTile buildChoiceTile(AccountViewChoiceItem item) {
    return ListTile(
      leading: Icon(
        item.icon,
        color: colorService.getColor(AppColors.PRIMARY.value),
        size: calculateDynamicWidth(7),
      ),
      title: buildTitleTitleTex(item),
      shape: buildTileBorder(item),
      contentPadding: EdgeInsets.symmetric(
        horizontal: context.lowWidth,
        vertical: calculateDynamicHeight(0.35),
      ),
      onTap: () {},
    );
  }

  List<ListTile> get buildChocieTiles =>
      viewModel.items.map<ListTile>((e) => buildChoiceTile(e)).toList();

  RoundedRectangleBorder buildTileBorder(AccountViewChoiceItem item) {
    return RoundedRectangleBorder(
      side: BorderSide(
        color: context.colors.onPrimary,
        width: item.title == "My Orders" || item.title == "Log Out" ? 0.5 : 0.3,
      ),
    );
  }

  Text buildTitleTitleTex(AccountViewChoiceItem item) {
    return Text(
      item.title,
      style: context.textTheme.subtitle1?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
