import 'package:either_dart/either.dart';
import 'package:weather/weather/domain/entities/weather_response_entity.dart';
import 'package:weather/weather/domain/repository/dataSource/weather_data_source.dart';
import 'package:weather/weather/domain/repository/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository{
  WeatherDataSource weatherDataSource;
  WeatherRepositoryImpl({required this.weatherDataSource});
  Future<Either<String,WeatherResponseEntity>> getWeather(String countryName){
    return weatherDataSource.getWeather(countryName);
  }

}