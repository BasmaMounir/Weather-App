import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/weather/cores/utils/constants.dart';
import 'package:weather/weather/presentation/screens/custom_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Constants.blue_Violet, Constants.purpureus],
        )),
      ),
      SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Image(
                  image: AssetImage('Assets/Images/weather-Image.png'),
                  height: 160.h,
                  width: 244.w,
                ),
                Text(
                  '19° ',
                  style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Precipitations',
                  style: TextStyle(fontSize: 24,),
                ),
                Text(
                  'Max: 24°   Min:18°',
                  style: TextStyle(fontSize: 24,),
                ),
                Image(
                  image: AssetImage('Assets/Images/House.png'),
                  height: 198.h,
                  width: 336.w,
                ),
              ],
            ),
          )),
          CustomContainer()
    ]));
  }
}
