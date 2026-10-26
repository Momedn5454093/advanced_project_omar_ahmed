import 'package:advanced_project_omar_ahmed/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  factory ApiResult.success(T data) = Success<T>;
  factory ApiResult.error(ErrorHandler errorHandler) = Error<T>;
}
