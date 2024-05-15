import 'package:either_dart/either.dart';
import 'package:weather/weather/domain/entities/weather_response_entity.dart';

abstract class WeatherDataSource{
  Future<Either<String,WeatherResponseEntity>> getWeather(String countryName);
}