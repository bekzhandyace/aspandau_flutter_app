import 'package:aspandau_flutter_app/feature/auth/auth.dart';
import 'package:aspandau_flutter_app/feature/auth/bloc/repositories/auth_repositories.dart';

import 'package:aspandau_flutter_app/router/router.dart';
import 'package:aspandau_flutter_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AspandauApp extends StatelessWidget {
  const AspandauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return RepositoryProvider(
          create: (context) => AuthRepository(),
          child: MaterialApp(
            home: AuthScreenWidget(),
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              scrollbarTheme: ScrollbarThemeData(
                thumbVisibility: MaterialStatePropertyAll<bool>(true),
                thumbColor: MaterialStatePropertyAll<Color>(Colors.red),
                trackColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              textTheme:
                  GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
            ),
            routes: routes,
            initialRoute: '/main',
          ),
        );
      },
    );
  }
}
