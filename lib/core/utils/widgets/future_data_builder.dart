import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class FutureDataBuilder<T> extends StatefulWidget {
  final Future<T?> data;
  final Widget? onDataLoading;
  final Widget onDataNoExist;
  final Widget Function(T data) onDataExist;
  final bool isLog;
  final bool showCircular;
  const FutureDataBuilder({
    Key? key,
    required this.data,
    required this.onDataNoExist,
    required this.onDataExist,
    this.onDataLoading,
    this.isLog = false,
    this.showCircular = false,
  }) : super(key: key);

  @override
  _FutureDataBuilderState<T> createState() => _FutureDataBuilderState<T>();
}

class _FutureDataBuilderState<T> extends State<FutureDataBuilder<T>> {
  late bool wasDataLoaded;
  late bool isDataNull;
  T? data;

  @override
  Widget build(BuildContext context) {
    return widget.data.toBuild<T?>(
      onSuccess: (data) {
        if (data == null || (data is List && data.isEmpty)) {
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
