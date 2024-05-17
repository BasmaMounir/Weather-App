import 'package:weather/weather/cores/utils/api_manger.dart';
import 'package:weather/weather/data/repository/dataSource/weather_data_source_impl.dart';
import 'package:weather/weather/data/repository/repository/weather_repository_impl.dart';
import 'package:weather/weather/domain/repository/dataSource/weather_data_source.dart';
import 'package:weather/weather/domain/repository/repository/weather_repository.dart';
import 'package:weather/weather/domain/useCase/weather_use_case.dart';

WeatherUseCase injectWeatherUseCase() {
  return WeatherUseCase(weatherRepository: injectWeatherRepository());
}

WeatherRepository injectWeatherRepository() {
  return WeatherRepositoryImpl(weatherDataSource: injectWeatherDataSource());
}

WeatherDataSource injectWeatherDataSource() {
  return WeatherDataSourceImpl(apiManger: ApiManger());
}
