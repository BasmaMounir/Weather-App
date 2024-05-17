import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/weather/cores/utils/DI.dart';
import 'package:weather/weather/cores/utils/constants.dart';
import 'package:weather/weather/presentation/controller/home_states.dart';
import 'package:weather/weather/presentation/controller/home_view_model.dart';
import 'package:weather/weather/presentation/screens/country_chosen.dart';
import 'package:weather/weather/presentation/screens/custom_container.dart';
import 'package:weather/weather/presentation/screens/daily_weather_forecast_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeViewModel viewModel =
      HomeViewModel(weatherUseCase: injectWeatherUseCase());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Constants.blue_Violet, Constants.purpureus],
      )),
      child: BlocProvider(
        create: (context) =>
            viewModel..getWeatherData('${CountryChosen.dropdownvalue}'),
        child: BlocBuilder(
          bloc: viewModel..getWeatherData('${CountryChosen.dropdownvalue}'),
          builder: (context, state) {
            return state is HomeSuccessStates
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Image(
                          image: const AssetImage(
                              'Assets/Images/weather-Image.png'),
                          height: 160.h,
                          width: 244.w,
                        ),
                        Text(
                          '${viewModel.forecastWeather.current!.tempC!.toInt()}°C ',
                          style: const TextStyle(
                              fontSize: 55, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${viewModel.forecastWeather.location!.region}',
                          style: const TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Max: ${viewModel.forecastWeather.forecast!.forecastday![0].day!.maxtempC}°   Min:${viewModel.forecastWeather.forecast!.forecastday![0].day!.mintempC}°',
                          style: const TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 430.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Image(
                                image:
                                    const AssetImage('Assets/Images/House.png'),
                                height: 180.h,
                                width: 336.w,
                              ),
                              const CustomContainer(),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '7-Days Forecasts',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 180.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                DateTime date = DateTime.tryParse(viewModel
                                    .forecastWeather
                                    .forecast!
                                    .forecastday![index]
                                    .date!)!;
                                return DailyWeatherForecastWidget(
                                    hour: '${date.day}/${date.month}',
                                    temperature:
                                        '${viewModel.forecastWeather.forecast!.forecastday![index].day!.avgtempC}',
                                    image:
                                        '${viewModel.forecastWeather.forecast!.forecastday![index].day!.condition!.icon}');
                              },
                              itemCount: viewModel.forecastWeather.forecast!
                                  .forecastday!.length),
                        ),
                      ],
                    ),
                  )
                : Center(child: Lottie.asset('Assets/Images/loading.json'));
          },
        ),
      ),
    ));
  }
}
