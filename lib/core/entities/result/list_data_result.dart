import 'package:vexana/vexana.dart';

import 'data_result.dart';

class ListDataResult<T extends INetworkModel>
    extends INetworkModel<DataResult<List<T>>> {
  final T parserModel;
  ListDataResult({
    required this.parserModel,
  });

  @override
  DataResult<List<T>> fromJson(Map<String, dynamic> json) {
    return DataResult<List<T>>(
      data: (json["data"] as List)
          .map<T>((e) => parserModel.fromJson(e))
          .toList(),
      success: json["success"],
      message: json["message"],
    );
  }

  @override
  Map<String, dynamic>? toJson() {
    return {};
  }
}
