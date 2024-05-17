import 'package:either_dart/either.dart';
import 'package:weather/weather/domain/entities/days_forecast_weather_entity.dart';
import 'package:weather/weather/domain/repository/dataSource/weather_data_source.dart';
import 'package:weather/weather/domain/repository/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository{
  WeatherDataSource weatherDataSource;

  WeatherRepositoryImpl({required this.weatherDataSource});

  Future<Either<String, DaysForecastWeatherEntity>> getWeather(
      String countryName) {
    return weatherDataSource.getWeather(countryName);
  }
}