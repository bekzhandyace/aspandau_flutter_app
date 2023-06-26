import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 1), () {});
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Center(
            child: Stack(
              children: [
                Image.asset('assets/images/background_splash_screen.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 185.w,
                          height: 55.h,
                          child: Image.asset(
                              'assets/images/splash_screen_text.png')),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: SizedBox(
                            width: 104.w,
                            height: 122.h,
                            child: Image.asset(
                                'assets/images/spash_screen_logo.png')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
