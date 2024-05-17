import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/weather/domain/entities/days_forecast_weather_entity.dart';
import 'package:weather/weather/domain/useCase/weather_use_case.dart';
import 'package:weather/weather/presentation/controller/home_states.dart';

class HomeViewModel extends Cubit<HomeStates> {
  HomeViewModel({required this.weatherUseCase}) : super(HomeLoadingStates());
  WeatherUseCase weatherUseCase;
  DaysForecastWeatherEntity forecastWeather = DaysForecastWeatherEntity();

  void getWeatherData(String countryName) async {
    emit(HomeLoadingStates());
    var either = await weatherUseCase.invoke(countryName);
    either.fold((error) {
      emit(HomeErrorStates());
    }, (response) {
      forecastWeather = response;
      emit(HomeSuccessStates());
    });
  }
}
