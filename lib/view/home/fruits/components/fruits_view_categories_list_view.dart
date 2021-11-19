part of 'package:fluttter_shop_app/view/home/fruits/view/fruits_view.dart';

extension _FruitsViewCategoriesListView on _FruitsViewState {
  Widget get buildCategoriesListView => FutureDataBuilder<List<Category>>(
        data: viewModel.getCategories(),
        onDataNoExist: Text("Data Gelmedi"),
        onDataLoading: Text("Data Yükleniyor..."),
        onDataExist: (data) {
          return SizedBox(
            height: calculateDynamicHeight(12),
            width: calculateDynamicWidth(100),
            child: HorizontalListView(
              models: data
                  .map<ListViewItemModel>(
                      (e) => ListViewItemModel(name: e.name!))
                  .toList(),
              onClicked: (_) {},
              paddingAmongItems: context.veryLowWidthPadding,
              focusedColor: colorService.getColor(AppColors.SECONDARY.value),
              selectedItemTextColor: context.colors.onSurface,
            ),
          );
        },
      );
}
