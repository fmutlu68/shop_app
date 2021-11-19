part of 'package:fluttter_shop_app/view/home/fruit_detail/view/fruit_detail_view.dart';

extension _FruitDetailViewFruitImageView on _FruitDetailViewState {
  Container get buildImageContainer => Container(
        width: calculateDynamicWidth(90),
        height: calculateDynamicHeight(30),
        decoration: BoxDecoration(
          borderRadius: context.lowRadius,
          image: DecorationImage(
            image: NetworkImage(
              widget.fruit.imageLink!,
            ),
            fit: BoxFit.fill,
          ),
        ),
      );
}
