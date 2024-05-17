import 'package:either_dart/either.dart';
import 'package:weather/weather/cores/utils/api_manger.dart';
import 'package:weather/weather/cores/utils/constants.dart';
import 'package:weather/weather/data/model/days_forecast_weather_DM.dart';
import 'package:weather/weather/domain/entities/days_forecast_weather_entity.dart';
import 'package:weather/weather/domain/repository/dataSource/weather_data_source.dart';

class WeatherDataSourceImpl implements WeatherDataSource {
  ApiManger apiManger;

  WeatherDataSourceImpl({required this.apiManger});

  @override
  Future<Either<String, DaysForecastWeatherEntity>> getWeather(
      String countryName) async {
    var either = await getWeatherApi(countryName);
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  Future<Either<String, DaysForecastWeatherDm>> getWeatherApi(
      String countryName) async {
    try {
      var response = await apiManger.getRequest(
          endPoint: '/v1/forecast.json',
          queryParameters: {
            'key': Constants.API_KEY,
            'q': countryName,
            'days': 7
          });
      return Right(DaysForecastWeatherDm.fromJson(response.data));
    } catch (error) {
      return Left(error.toString());
    }
  }
}
