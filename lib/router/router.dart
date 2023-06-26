import 'package:aspandau_flutter_app/feature/auth/auth.dart';
import 'package:aspandau_flutter_app/feature/main/main_screen.dart';
import 'package:aspandau_flutter_app/feature/product_details/service_details_screen.dart';

final routes = {
  '/splashScreen': (context) => const SplashScreen(),
  '/auth': (context) => AuthScreenPage(),
  '/main': (contetx) => MainScreen(),
  '/auth/main': (context) => const MainScreen(),
  '/main/productDetails': (context) => const ProductDetails(),
  '/productDetails/main': (context) => const MainScreen(),
};
