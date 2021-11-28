import 'package:fluttter_shop_app/core/entities/result/data_result.dart';
import 'package:fluttter_shop_app/core/entities/result/entity_data_result.dart';
import 'package:fluttter_shop_app/model/fruit.dart';
import 'package:fluttter_shop_app/production/enum/api_controllers_enum.dart';
import 'package:fluttter_shop_app/production/enum/api_paths_enum.dart';
import 'package:vexana/vexana.dart';

abstract class ICartService {
  final INetworkManager _networkManager;

  ICartService(this._networkManager);
  Future<DataResult<Fruit>?> getFruitById(int id);
}

class CartService extends ICartService {
  CartService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<DataResult<Fruit>?> getFruitById(int id) async {
    return (await _networkManager
            .send<EntityDataResult<Fruit>, DataResult<Fruit>>(
      "${ApiPaths.Fruit.path}/${FruitRoutePaths.GetById.path}$id",
      parseModel: EntityDataResult(parserModel: Fruit()),
      method: RequestType.GET,
    ))
        .data;
  }
}
