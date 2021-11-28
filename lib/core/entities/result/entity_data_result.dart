import 'package:vexana/vexana.dart';
import 'package:fluttter_shop_app/core/entities/result/data_result.dart';

class EntityDataResult<T extends INetworkModel>
    extends INetworkModel<DataResult<T>> {
  final T parserModel;
  EntityDataResult({
    required this.parserModel,
  });

  @override
  DataResult<T> fromJson(Map<String, dynamic> json) {
    return DataResult<T>(
      data: parserModel.fromJson(json["data"] as Map<String, dynamic>),
      success: json["success"],
      message: json["message"],
    );
  }

  @override
  Map<String, dynamic>? toJson() {
    return {};
  }
}
