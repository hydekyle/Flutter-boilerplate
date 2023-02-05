import 'package:get/get_navigation/src/routes/get_route.dart';
import 'view/screens/shop.dart';
import 'view/screens/home.dart';

class AppPages {
  AppPages._();
  static const String home = '/home', shop = '/shop';

  static final pages = [
    GetPage(name: home, page: () => const Home()),
    GetPage(name: shop, page: () => const Shop()),
  ];
}
