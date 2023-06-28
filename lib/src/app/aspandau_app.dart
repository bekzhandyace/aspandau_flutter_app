





import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../feature/auth_page/bloc/repositories/auth_repositories.dart';
import '../../feature/auth_page/presentation/page/auth_page.dart';
import '../../feature/payment_page/bloc/card_repositories.dart';
import '../core/router/router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => AuthRepository(),
            ),
            RepositoryProvider(
              create: (context) => CardRepositories(),
            ),
          ],
          child: MaterialApp(
            home: AuthScreenPage(),
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
            initialRoute: '/auth',
          ),
        );
      },
    );
  }
}
