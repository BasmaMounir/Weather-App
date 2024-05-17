import 'package:either_dart/either.dart';
import 'package:weather/weather/domain/entities/days_forecast_weather_entity.dart';
import 'package:weather/weather/domain/repository/repository/weather_repository.dart';

class WeatherUseCase{
  WeatherRepository weatherRepository;

  WeatherUseCase({required this.weatherRepository});

  Future<Either<String, DaysForecastWeatherEntity>> invoke(String countryName) {
    return weatherRepository.getWeather(countryName);
  }
}