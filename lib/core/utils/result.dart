class Result<R> {
  R? result;
  String? error;

  final bool isSuccessful;

  bool get hasError => error?.isNotEmpty ?? true;

  Result.fromSuccess({required this.result}) : isSuccessful = true;

  Result.fromError({required this.error}) : isSuccessful = false;
}
