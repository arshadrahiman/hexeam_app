import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hexmmart/page_routing/page_routes.dart';
import 'package:hexmmart/views/bottom_navbar.dart';
import 'package:hexmmart/views/my_cart.dart';
import 'package:hexmmart/views/profile.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.profile,
      page: () => Profile_Screen(),
      // binding:  Profile_Screen(),
    ),
    GetPage(
      name: Routes.appbar,
      page: () => LandingPage(),
    ),
    GetPage(
      name: Routes.mycart,
      page: () => My_Cart(),
    ),
    GetPage(
      name: Routes.arg_cart,
      page: () => My_Cart(),
    )
  ];
}
