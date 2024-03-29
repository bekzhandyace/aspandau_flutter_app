import '../../feature/auth_page/auth.dart';
import '../../feature/main_page/presentation/page/main_page.dart';
import '../../feature/payment_page/presentation/widgets/payment_modal.dart';
import '../../feature/product_details/presentation/page/service_details_page.dart';

final routes = {
  '/splashScreen': (context) => const SplashScreen(),
  '/auth': (context) => AuthScreenPage(),
  '/main': (contetx) => const MainScreen(),
  '/auth/paymentModal': (context) => const PaymentModal(),
  '/auth/main': (context) => const MainScreen(),
  '/main/productDetails': (context) => const ProductDetails(),
  '/productDetails/main': (context) => const MainScreen(),
};
