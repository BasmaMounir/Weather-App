import 'package:either_dart/either.dart';
import 'package:weather/weather/cores/utils/api_manger.dart';
import 'package:weather/weather/cores/utils/constants.dart';
import 'package:weather/weather/data/model/weather_respons_DM.dart';
import 'package:weather/weather/domain/entities/weather_response_entity.dart';
import 'package:weather/weather/domain/repository/dataSource/weather_data_source.dart';

class WeatherDataSourceImpl implements WeatherDataSource {
  ApiManger apiManger;

  WeatherDataSourceImpl({required this.apiManger});

  @override
  Future<Either<String,WeatherResponseEntity>> getWeather(String countryName) async {
    var either = await getWeatherApi(countryName);
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  Future<Either<String, WeatherResponseDm>> getWeatherApi(
      String countryName) async {
    try {
      var response = await apiManger.getRequest(
          endPoint: '/v1/current.json',
          queryParameters: {
            'key': Constants.API_KEY,
            'q': countryName,
            'aqi': 'no'
          });
      return Right(WeatherResponseDm.fromJson(response.data));
    } catch (error) {
      return Left(error.toString());
    }
  }
}
