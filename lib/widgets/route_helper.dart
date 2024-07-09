import 'package:get/get.dart';
import 'package:mm/pages/home_page.dart';

class RouteHelper {
  static const String initial = "/";
  static const String homeRoute = "/home-route";

  static String getInitial() => initial;
  static String getHomeRoute() => homeRoute;

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: (() => const HomePage(
              username: '',
            ))),
    GetPage(
        name: homeRoute,
        page: () {
          return const HomePage(
            username: '',
          );
        },
        transition: Transition.fadeIn),
  ];
}
