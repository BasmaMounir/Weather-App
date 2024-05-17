import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HourlyWeatherForecastWidget extends StatelessWidget {
  HourlyWeatherForecastWidget(
      {super.key,
      required this.hour,
      required this.temperature,
      required this.image,
      required this.weatherCondition});

  String hour;
  String weatherCondition;
  String temperature;
  String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$temperature°C', style: TextStyle(fontSize: 20)),
        Image(
          image: NetworkImage('https:' + image),
          height: 50.h,
          width: 50.w,
        ),
        Text(weatherCondition, style: TextStyle(fontSize: 20)),
        Text(hour, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
