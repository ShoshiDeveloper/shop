import 'package:shop/core/errors/source_exception.dart';

sealed class Result<T> {
  const Result._();
  const factory Result.ok(T data) = ResultOk<T>._;
  const factory Result.error(SourceException error) = ResultError<T>._;

  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(SourceException err) err,
  });
}

final class ResultOk<T> extends Result<T> {
  const ResultOk._(this.data) : super._();

  final T data;

  @override
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(SourceException err) err,
  }) {
    return ok(data);
  }
}

final class ResultError<T> extends Result<T> {
  const ResultError._(this.error) : super._();

  final SourceException error;

  @override
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(SourceException err) err,
  }) {
    return err(error);
  }
}
