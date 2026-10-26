import 'package:advanced_project_omar_ahmed/core/networking/api_error_handler.dart';
import 'package:advanced_project_omar_ahmed/core/networking/api_service.dart';

import '../../../../core/networking/api_result.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseBody>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(ErrorHandler.handle(error));
    }
  }
}
