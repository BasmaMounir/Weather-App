import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/weather/cores/utils/constants.dart';
import 'package:weather/weather/presentation/screens/country_chosen.dart';
import 'package:weather/weather/presentation/screens/home_view.dart';
import 'package:weather/weather/presentation/screens/started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: Constants.startedScreenRouteName,
        routes: {
          Constants.startedScreenRouteName: (context) => const StartedView(),
          Constants.homeScreenRouteName: (context) => HomeView(),
          Constants.countryChosenRouteName: (context) => CountryChosen(),
        },
      ),
    );
  }
}

