
import 'package:get/get.dart';
import 'package:untitled/Screens/Home/home_screen.dart';
import 'package:untitled/Screens/Login/login_screen.dart';
import 'package:untitled/Screens/splash_screen.dart';
import 'package:untitled/routes/route_name.dart';
class AppRoutes{

  static appRoute () => [
      GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(milliseconds: 220),
          transition: Transition.leftToRight),

    GetPage(
        name: RouteName.logiScreen,
        page: () => LoginScreen(),
        transitionDuration: Duration(milliseconds: 220),
        transition: Transition.leftToRight),

    GetPage(
        name: RouteName.homeScreen,
        page: () => HomeScreen(),
        transitionDuration: Duration(milliseconds: 220),
        transition: Transition.leftToRight)
  ];

}