import 'package:weather/weather/domain/entities/weather_response_entity.dart';

class WeatherResponseDm extends WeatherResponseEntity {
  WeatherResponseDm({
      super.location,
    super.current,});

  WeatherResponseDm.fromJson(dynamic json) {
    location = json['location'] != null ? LocationDM.fromJson(json['location']) : null;
    current = json['current'] != null ? CurrentDM.fromJson(json['current']) : null;
  }


  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   if (location != null) {
  //     map['location'] = location?.toJson();
  //   }
  //   if (current != null) {
  //     map['current'] = current?.toJson();
  //   }
  //   return map;
  // }

}

class CurrentDM  extends CurrentEntity{
  CurrentDM({
    super.lastUpdatedEpoch,
    super.lastUpdated,
    super.tempC,
    super.tempF,
    super.isDay,
    super.condition,
    super.windMph,
    super.windKph,
    super.windDegree,
    super.windDir,
    super.pressureMb,
    super.pressureIn,
    super.precipMm,
    super.precipIn,
    super.humidity,
    super.cloud,
    super.feelslikeC,
    super.feelslikeF,
    super.visKm,
    super.visMiles,
    super.uv,
    super.gustMph,
    super.gustKph,});

  CurrentDM.fromJson(dynamic json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null ? ConditionDM.fromJson(json['condition']) : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = lastUpdatedEpoch;
    map['last_updated'] = lastUpdated;
    map['temp_c'] = tempC;
    map['temp_f'] = tempF;
    map['is_day'] = isDay;
    // if (condition != null) {
    //   map['condition'] = condition?.toJson();
    // }
    map['wind_mph'] = windMph;
    map['wind_kph'] = windKph;
    map['wind_degree'] = windDegree;
    map['wind_dir'] = windDir;
    map['pressure_mb'] = pressureMb;
    map['pressure_in'] = pressureIn;
    map['precip_mm'] = precipMm;
    map['precip_in'] = precipIn;
    map['humidity'] = humidity;
    map['cloud'] = cloud;
    map['feelslike_c'] = feelslikeC;
    map['feelslike_f'] = feelslikeF;
    map['vis_km'] = visKm;
    map['vis_miles'] = visMiles;
    map['uv'] = uv;
    map['gust_mph'] = gustMph;
    map['gust_kph'] = gustKph;
    return map;
  }

}

class ConditionDM extends ConditionEntity{
  ConditionDM({
    super.text,
    super.icon,
    super.code,});

  ConditionDM.fromJson(dynamic json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['icon'] = icon;
    map['code'] = code;
    return map;
  }

}

class LocationDM extends LocationEntity{
  LocationDM({
    super.name,
    super.region,
    super.country,
    super.lat,
    super.lon,
    super.tzId,
    super.localtimeEpoch,
    super.localtime,});

  LocationDM.fromJson(dynamic json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = json['lat'];
    lon = json['lon'];
    tzId = json['tz_id'];
    localtimeEpoch = json['localtime_epoch'];
    localtime = json['localtime'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['region'] = region;
    map['country'] = country;
    map['lat'] = lat;
    map['lon'] = lon;
    map['tz_id'] = tzId;
    map['localtime_epoch'] = localtimeEpoch;
    map['localtime'] = localtime;
    return map;
  }

}