import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/weather/cores/utils/constants.dart';
import 'package:weather/weather/presentation/controller/home_view_model.dart';
import 'package:weather/weather/presentation/screens/hourly_weather_forecast_widget.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<HomeViewModel>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 428.w,
        height: 246.h,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Constants.blue_Violet, Constants.lightPurpureus],
            )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Today', style: TextStyle(fontSize: 20)),
                Text('${bloc.forecastWeather.forecast!.forecastday![0].date}',
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.h),
              color: Colors.white,
              height: 1.h,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 20.w,
                ),
                scrollDirection: Axis.horizontal,
                itemCount:
                    bloc.forecastWeather.forecast!.forecastday![0].hour!.length,
                itemBuilder: (context, index) {
                  DateTime date = DateTime.tryParse(bloc.forecastWeather
                      .forecast!.forecastday![0].hour![index].time!)!;
                  return HourlyWeatherForecastWidget(
                      weatherCondition:
                          '${bloc.forecastWeather.forecast!.forecastday![0].hour![index].condition!.text}',
                      image:
                          '${bloc.forecastWeather.forecast!.forecastday![0].hour![index].condition!.icon}',
                      hour: '${date.hour}:${date.minute}0',
                      temperature:
                          '${bloc.forecastWeather.forecast!.forecastday![0].hour![index].tempC}');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
