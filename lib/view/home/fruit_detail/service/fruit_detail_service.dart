import '../../../../core/entities/result/data_result.dart';
import '../../../../core/entities/result/list_data_result.dart';
import '../../../../model/nutrition.dart';
import '../../../../production/enum/api_paths_enum.dart';
import 'package:vexana/vexana.dart';

abstract class IFruitDetailService {
  INetworkManager networkManager;
  IFruitDetailService({
    required this.networkManager,
  });
  Future<DataResult<List<Nutrition>>?> getNutritions(int fruitId);
}

class FruitDetailService extends IFruitDetailService {
  FruitDetailService(INetworkManager manager) : super(networkManager: manager);

  @override
  Future<DataResult<List<Nutrition>>?> getNutritions(int fruitId) async {
    IResponseModel<DataResult<List<Nutrition>>?> response = await networkManager
        .send<ListDataResult<Nutrition>, DataResult<List<Nutrition>>>(
      "${ApiPaths.Nutrition.path}/getnutritionsbyfruit?fruitId=$fruitId",
      parseModel: ListDataResult(parserModel: Nutrition()),
      method: RequestType.GET,
    );
    return response.data;
  }
}
