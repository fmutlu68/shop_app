import 'package:fluttter_shop_app/model/category.dart';
import 'package:fluttter_shop_app/core/entities/result/data_result.dart';
import 'package:fluttter_shop_app/core/entities/result/list_data_result.dart';
import 'package:fluttter_shop_app/production/enum/api_paths_enum.dart';
import 'package:vexana/vexana.dart';

import 'package:fluttter_shop_app/model/fruit.dart';

abstract class IFruitsService {
  INetworkManager networkManager;
  IFruitsService({
    required this.networkManager,
  });
  Future<List<Fruit>?> getFruits();
  Future<DataResult<List<Fruit>>?> getFruitsByType(int typeId);
  Future<List<Category>?> getCategories();
}

class FruitsSerivce extends IFruitsService {
  FruitsSerivce(INetworkManager manager) : super(networkManager: manager);
  @override
  Future<List<Fruit>?> getFruits() async {
    IResponseModel<List<Fruit>?> response =
        await networkManager.send<Fruit, List<Fruit>>(
      "${ApiPaths.Fruit.path}/getfruits",
      parseModel: Fruit(),
      method: RequestType.GET,
    );
    return response.data;
  }

  @override
  Future<List<Category>?> getCategories() async {
    IResponseModel<List<Category>?> response =
        await networkManager.send<Category, List<Category>>(
      "${ApiPaths.Category.path}/getcategories",
      parseModel: Category(),
      method: RequestType.GET,
    );
    return response.data;
  }

  @override
  Future<DataResult<List<Fruit>>?> getFruitsByType(int typeId) async {
    IResponseModel<DataResult<List<Fruit>>?> response = await networkManager
        .send<ListDataResult<Fruit>, DataResult<List<Fruit>>>(
      "${ApiPaths.Fruit.path}/getfruitsbytype?typeId=$typeId",
      parseModel: ListDataResult(parserModel: Fruit()),
      method: RequestType.GET,
    );
    return response.data;
  }
}
