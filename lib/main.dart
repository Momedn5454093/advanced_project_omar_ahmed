import 'package:advanced_project_omar_ahmed/core/networking/api_constants.dart';
import 'package:advanced_project_omar_ahmed/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';

void main() {
  // appFlavor will match the flavor name from build.gradle.kts
  if (appFlavor == 'production') {
    // Logic for production environment
    ApiConstants.apiUrl = 'https://api.flavors_example.com';
  } else if (appFlavor == 'development') {
    // Logic for development environment
    ApiConstants.apiUrl = 'https://dev.api.flavors_example.com';
  }
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
