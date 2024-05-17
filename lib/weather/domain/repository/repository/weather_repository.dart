import 'package:either_dart/either.dart';
import 'package:weather/weather/domain/entities/days_forecast_weather_entity.dart';

abstract class WeatherRepository{
  Future<Either<String, DaysForecastWeatherEntity>> getWeather(
      String countryName);
}