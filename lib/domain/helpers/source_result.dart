sealed class SourceResult<T> {
  const SourceResult._();
  const factory SourceResult.ok(T data) = ResultOk<T>._;
  const factory SourceResult.error(Exception error) = ResultError<T>._;

  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(Exception err) err,
  });
}

final class ResultOk<T> extends SourceResult<T> {
  const ResultOk._(this.data) : super._();

  final T data;

  @override
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(Exception err) err,
  }) {
    return ok(data);
  }
}

final class ResultError<T> extends SourceResult<T> {
  const ResultError._(this.error) : super._();

  final Exception error;

  @override
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(Exception err) err,
  }) {
    return err(error);
  }
}
