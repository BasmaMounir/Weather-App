import 'package:either_dart/either.dart';
import 'package:weather/weather/domain/entities/weather_response_entity.dart';
import 'package:weather/weather/domain/repository/repository/weather_repository.dart';

class WeatherUseCase{
  WeatherRepository weatherRepository;
  WeatherUseCase({required this.weatherRepository});
  Future<Either<String,WeatherResponseEntity>> invoke(String countryName){
   return weatherRepository.getWeather(countryName);
  }
}