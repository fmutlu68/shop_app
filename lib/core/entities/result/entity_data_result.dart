import 'package:vexana/vexana.dart';
import 'data_result.dart';

class EntityDataResult<T extends INetworkModel>
    extends INetworkModel<DataResult<T>> {
  final T parserModel;
  EntityDataResult({
    required this.parserModel,
  });

  @override
  DataResult<T> fromJson(Map<String, dynamic> json) {
    return DataResult<T>(
      data: json["data"] != null
          ? parserModel.fromJson(json["data"] as Map<String, dynamic>)
          : null,
      success: json["success"],
      message: json["message"],
    );
  }

  @override
  Map<String, dynamic>? toJson() {
    return {};
  }
}
