import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class FutureNullableDataBuilder<T> extends StatefulWidget {
  final Future<T> data;
  final Widget? onDataLoading;
  final Widget onDataNoExist;
  final Widget Function(T data) onDataExist;
  final bool isLog;
  final bool showCircular;
  const FutureNullableDataBuilder({
    Key? key,
    required this.data,
    required this.onDataNoExist,
    required this.onDataExist,
    this.onDataLoading,
    this.isLog = false,
    this.showCircular = false,
  }) : super(key: key);

  @override
  _FutureNullableDataBuilderState<T> createState() =>
      _FutureNullableDataBuilderState<T>();
}

class _FutureNullableDataBuilderState<T>
    extends State<FutureNullableDataBuilder<T>> {
  late bool wasDataLoaded;
  late bool isDataNull;
  T? data;

  @override
  Widget build(BuildContext context) {
    return widget.data.toBuild<T>(
      onSuccess: (data) {
        if (data == null) {
          return widget.onDataNoExist;
        } else {
          return widget.onDataExist(data);
        }
      },
      loadingWidget: widget.showCircular
          ? circularIndicator
          : widget.onDataLoading ?? circularIndicator,
      notFoundWidget: widget.onDataNoExist,
      onError: Text("Error"),
    );
  }

  Widget get circularIndicator => Center(
        child: CircularProgressIndicator(),
      );
}

enum _DataSituationState {
  loading,
  exist,
  noexist,
}

extension on _DataSituationState {
  String get message {
    switch (this) {
      case _DataSituationState.loading:
        return "Data Yükleniyor...";
      case _DataSituationState.exist:
        return "Data Null Değil.";
      case _DataSituationState.noexist:
        return "Data Null.";
    }
  }
}
