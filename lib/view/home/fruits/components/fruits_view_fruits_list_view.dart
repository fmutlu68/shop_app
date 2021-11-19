part of 'package:fluttter_shop_app/view/home/fruits/view/fruits_view.dart';

extension _FruitsViewFruitsListView on _FruitsViewState {
  get buildOrganicFruitsRow => FutureDataBuilder<DataResult<List<Fruit>>>(
        data: viewModel.getFruitsByTypeId(FruitTypes.OrganicFruits.typeId),
        onDataExist: (data) {
          return FruitsListRow(
            fruits: [...data.data!, ...data.data!],
            title: "Organic Fruits",
            subtitle: "Pick up from organic fruits",
          );
        },
        onDataNoExist: Text("Data Gelmedi."),
      );

  get buildMixedFruitsRow => FutureDataBuilder<DataResult<List<Fruit>>>(
        data: viewModel.getFruitsByTypeId(FruitTypes.MixedFruits.typeId),
        onDataExist: (data) {
          return FruitsListRow(
            fruits: [...data.data!, ...data.data!],
            title: "Mixed Fruit Pack",
            subtitle: "Fruit mix fresh pack",
          );
        },
        onDataNoExist: Text("Data Gelmedi."),
      );

  Widget get buildFruitsListView {
    return Expanded(
      child: ListView(
        padding: context.veryLowWidthPadding,
        children: [
          buildOrganicFruitsRow,
          buildMixedFruitsRow,
        ],
      ),
    );
  }
}

GridView buildFruitsGridView(List<Fruit> data) {
  return GridView.builder(
    gridDelegate: SilverListDelegateWithOnlyItemCountPerRow(2),
    itemCount: data.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: FruitCard(fruit: data[index]),
      );
    },
  );
}
