import 'package:flutter/material.dart';

class NullableDataBuilder<T> extends StatefulWidget {
  final T? Function() loadData;
  final Widget onDataNoExist;
  final Widget Function(T data) onDataExist;
  final bool isLog;
  final bool showCircular;
  const NullableDataBuilder({
    Key? key,
    required this.loadData,
    required this.onDataNoExist,
    required this.onDataExist,
    this.isLog = false,
    this.showCircular = false,
  }) : super(key: key);

  @override
  _NullableDataBuilderState<T> createState() => _NullableDataBuilderState<T>();
}

class _NullableDataBuilderState<T> extends State<NullableDataBuilder<T>> {
  late bool wasDataLoaded;
  late bool isDataNull;
  T? data;

  @override
  void initState() {
    super.initState();
    wasDataLoaded = false;
    isDataNull = false;
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    if (!wasDataLoaded) {
      if (widget.showCircular) {
        return CircularProgressIndicator();
      } else {
        return SizedBox();
      }
    } else if (isDataNull && data == null) {
      return widget.onDataNoExist;
    } else {
      return widget.onDataExist(data!);
    }
  }

  void loadData() {
    if (widget.isLog) print(_DataSituationState.loading.message);
    T? newData = widget.loadData();
    if (newData == null) {
      if (widget.isLog) print(_DataSituationState.noexist.message);
    } else {
      if (widget.isLog) print(_DataSituationState.exist.message);
    }
    setState(() {
      data = newData;
      wasDataLoaded = true;
      isDataNull = newData == null;
    });
  }
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
