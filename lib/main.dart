import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


// import 'app/data/services/secure_service.dart';
import 'app/modules/home/bindings/home_binding.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // SecureService _secureService = SecureService();

  FocusManager.instance.primaryFocus?.unfocus();


  runApp(
    GetMaterialApp(
      title: "LuvIt - Dating Cards",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
