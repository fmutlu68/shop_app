part of 'package:fluttter_shop_app/view/home/fruit_detail/view/fruit_detail_view.dart';

extension _FruitDetailViewFruitDetailTexts on _FruitDetailViewState {
  Text get buildFruitTitleText => Text(
        widget.fruit.name!,
        style: context.textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      );
  Text get buildFruitNutritionTitleText => Text(
        "Faydaları",
        style: context.textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      );

  Text get buildFruitSubtitleText => Text(
        widget.fruit.detail!,
        style: context.textTheme.subtitle1,
      );
  Widget get buildNutritionsList => FutureDataBuilder<List<Nutrition>?>(
        data: viewModel.getNutritions(widget.fruit.id!),
        onDataLoading: Column(
          children: [
            NutritionItemTile(
              nutrition: Nutrition(name: "Loading..."),
            ),
          ],
        ),
        onDataNoExist: Column(
          children: [
            NutritionItemTile(
              nutrition: Nutrition(name: "Girilmemiş"),
            ),
          ],
        ),
        onDataExist: (data) {
          return buildNutritionsColumn(data!);
        },
      );
  Column buildNutritionsColumn(List<Nutrition> data) {
    return Column(
      children: data
          .map<Widget>(
            (e) => NutritionItemTile(
              nutrition: e,
            ),
          )
          .toList(),
    );
  }
}
