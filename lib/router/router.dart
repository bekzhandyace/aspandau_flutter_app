import 'package:aspandau_flutter_app/feature/auth/auth.dart';
import 'package:aspandau_flutter_app/feature/main_page/presentation/page/main_page.dart';
import 'package:aspandau_flutter_app/feature/product_details/presentation/page/service_details_page.dart';

final routes = {
  '/splashScreen': (context) => const SplashScreen(),
  '/auth': (context) => AuthScreenPage(),
  '/main': (contetx) => MainScreen(),
  '/auth/main': (context) => const MainScreen(),
  '/main/productDetails': (context) => const ProductDetails(),
  '/productDetails/main': (context) => const MainScreen(),
};
