class DataResult<T> {
  bool? success;
  String? message;
  T? data;
  DataResult({
    this.success,
    this.message,
    this.data,
  });
}
