import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/weather/cores/utils/constants.dart';

class DailyWeatherForecastWidget extends StatelessWidget {
  DailyWeatherForecastWidget({
    super.key,
    required this.hour,
    required this.temperature,
    required this.image,
  });

  String hour;
  String temperature;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 82.w,
      height: 172.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(color: Colors.white, width: 1),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Constants.blue_Violet, Color(0xff8E78C8)],
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$temperature°C', style: TextStyle(fontSize: 20)),
          Image(
            image: NetworkImage('https:' + image),
            height: 50.h,
            width: 50.w,
          ),
          Text(hour, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
