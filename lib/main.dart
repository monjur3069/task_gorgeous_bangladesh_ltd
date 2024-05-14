
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/routes/route.dart';
import 'package:task_gorgeous_bangladesh_ltd/routes/routes_name.dart';

void main() async {
  EasyLoading.instance
    ..displayDuration = const Duration(seconds: 2)
    ..loadingStyle = EasyLoadingStyle.custom //This was missing in earlier code
    ..backgroundColor = Colors.blue
    ..indicatorColor = Colors.white
    ..maskColor = Colors.red
    ..textColor = Colors.white
    ..contentPadding = const EdgeInsets.symmetric(horizontal: 50,vertical: 20)
    ..indicatorType = EasyLoadingIndicatorType.fadingGrid
    ..dismissOnTap = false;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
        (_) => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (_,child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppRoute.pages,
          initialRoute: Routes.splashRoute,
          builder: EasyLoading.init(),
          // home: PendingQuoteAndProposalScreen(),
        );
      }
    );
  }
}
