import 'package:fluttter_shop_app/core/entities/result/data_result.dart';
import 'package:fluttter_shop_app/core/entities/result/entity_data_result.dart';
import 'package:fluttter_shop_app/model/user.dart';
import 'package:fluttter_shop_app/production/enum/api_controllers_enum.dart';
import 'package:fluttter_shop_app/production/enum/api_paths_enum.dart';
import 'package:fluttter_shop_app/production/model/auth/user_to_login.dart';
import 'package:vexana/vexana.dart';

abstract class ILoginService {
  INetworkManager networkManager;
  ILoginService({
    required this.networkManager,
  });
  Future<DataResult<User?>?> loginUser(UserToLogin userToLogin);
}

class LoginService extends ILoginService {
  LoginService(INetworkManager manager) : super(networkManager: manager);

  @override
  Future<DataResult<User?>?> loginUser(UserToLogin userToLogin) async {
    IResponseModel<DataResult<User?>?> response =
        await networkManager.send<EntityDataResult<User>, DataResult<User?>>(
      "${ApiPaths.Auth.path}/${AuthRoutePaths.Login.path}",
      parseModel: EntityDataResult<User>(parserModel: User()),
      method: RequestType.POST,
      data: userToLogin.toJson(),
    );
    return response.data;
  }
}
