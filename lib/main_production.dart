import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupGetIt();

  //to fix text being hidden font bug in flutter_screenutil package in release mode
  await ScreenUtil.ensureScreenSize();

  runApp(DocApp(appRouter: AppRouter()));
}
