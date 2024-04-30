import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_profile/bindings/main_profile_binding.dart';
import '../modules/main_profile/views/main_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_PROFILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_PROFILE,
      page: () => const MainProfileView(),
      binding: MainProfileBinding(),
    ),
  ];
}
