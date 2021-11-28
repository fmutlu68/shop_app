part of 'package:fluttter_shop_app/view/home/favorites/view/favorites_view.dart';

extension _AccountViewChoiceTile on _FavoritesViewState {
  Widget get buildFavoritesList => FutureDataBuilder<List<Fruit>>(
        data: viewModel.getFavorites(),
        onDataExist: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return FavoriteFruitItemCard(
                fruit: data[index],
                colorService: colorService,
              );
            },
          );
        },
        onDataNoExist: Center(
          child: Text("Error"),
        ),
        onDataLoading: Center(
          child: CircularProgressIndicator(),
        ),
      );
}
