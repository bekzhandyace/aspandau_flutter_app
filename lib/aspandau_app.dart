import 'package:aspandau_flutter_app/feature/auth/auth.dart';

import 'package:aspandau_flutter_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AspandauApp extends StatelessWidget {
  const AspandauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          home: const AuthScreenWidget(),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            textTheme:
                GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
          ),
          routes: routes,
          initialRoute: '/auth',
        );
      },
    );
  }
}
