import 'package:weather/weather/domain/entities/days_forecast_weather_entity.dart';

class DaysForecastWeatherDm extends DaysForecastWeatherEntity {
  DaysForecastWeatherDm({
    super.location,
    super.current,
    super.forecast,
  });

  DaysForecastWeatherDm.fromJson(dynamic json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    forecast =
        json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }
}

class Forecast extends ForecastEntity {
  Forecast({
    super.forecastday,
  });

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      forecastday = [];
      json['forecastday'].forEach((v) {
        forecastday?.add(Forecastday.fromJson(v));
      });
    }
  }
}

class Forecastday extends ForecastDayEntity {
  Forecastday({
    super.date,
    super.dateEpoch,
    super.day,
    super.astro,
    super.hour,
  });

  Forecastday.fromJson(dynamic json) {
    date = json['date'];
    dateEpoch = json['date_epoch'];
    day = json['day'] != null ? Day.fromJson(json['day']) : null;
    astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      hour = [];
      json['hour'].forEach((v) {
        hour?.add(Hour.fromJson(v));
      });
    }
  }
}

class Hour extends HourEntity {
  Hour({
    super.timeEpoch,
    super.time,
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
    super.snowCm,
    super.humidity,
    super.cloud,
    super.feelslikeC,
    super.feelslikeF,
    super.windchillC,
    super.windchillF,
    super.heatindexC,
    super.heatindexF,
    super.dewpointC,
    super.dewpointF,
    super.willItRain,
    super.chanceOfRain,
    super.willItSnow,
    super.chanceOfSnow,
    super.visKm,
    super.visMiles,
    super.gustMph,
    super.gustKph,
    super.uv,
    super.shortRad,
    super.diffRad,
  });

  Hour.fromJson(dynamic json) {
    timeEpoch = json['time_epoch'];
    time = json['time'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    snowCm = json['snow_cm'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    windchillC = json['windchill_c'];
    windchillF = json['windchill_f'];
    heatindexC = json['heatindex_c'];
    heatindexF = json['heatindex_f'];
    dewpointC = json['dewpoint_c'];
    dewpointF = json['dewpoint_f'];
    willItRain = json['will_it_rain'];
    chanceOfRain = json['chance_of_rain'];
    willItSnow = json['will_it_snow'];
    chanceOfSnow = json['chance_of_snow'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
    uv = json['uv'];
    shortRad = json['short_rad'];
    diffRad = json['diff_rad'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time_epoch'] = timeEpoch;
    map['time'] = time;
    map['temp_c'] = tempC;
    map['temp_f'] = tempF;
    map['is_day'] = isDay;
    map['wind_mph'] = windMph;
    map['wind_kph'] = windKph;
    map['wind_degree'] = windDegree;
    map['wind_dir'] = windDir;
    map['pressure_mb'] = pressureMb;
    map['pressure_in'] = pressureIn;
    map['precip_mm'] = precipMm;
    map['precip_in'] = precipIn;
    map['snow_cm'] = snowCm;
    map['humidity'] = humidity;
    map['cloud'] = cloud;
    map['feelslike_c'] = feelslikeC;
    map['feelslike_f'] = feelslikeF;
    map['windchill_c'] = windchillC;
    map['windchill_f'] = windchillF;
    map['heatindex_c'] = heatindexC;
    map['heatindex_f'] = heatindexF;
    map['dewpoint_c'] = dewpointC;
    map['dewpoint_f'] = dewpointF;
    map['will_it_rain'] = willItRain;
    map['chance_of_rain'] = chanceOfRain;
    map['will_it_snow'] = willItSnow;
    map['chance_of_snow'] = chanceOfSnow;
    map['vis_km'] = visKm;
    map['vis_miles'] = visMiles;
    map['gust_mph'] = gustMph;
    map['gust_kph'] = gustKph;
    map['uv'] = uv;
    map['short_rad'] = shortRad;
    map['diff_rad'] = diffRad;
    return map;
  }
}

class Condition extends ConditionEntity {
  Condition({
    super.text,
    super.icon,
    super.code,
  });

  Condition.fromJson(dynamic json) {
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

class Astro extends AstroEntity {
  Astro({
    super.sunrise,
    super.sunset,
    super.moonrise,
    super.moonset,
    super.moonPhase,
    super.moonIllumination,
    super.isMoonUp,
    super.isSunUp,
  });

  Astro.fromJson(dynamic json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonPhase = json['moon_phase'];
    moonIllumination = json['moon_illumination'];
    isMoonUp = json['is_moon_up'];
    isSunUp = json['is_sun_up'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    map['moonrise'] = moonrise;
    map['moonset'] = moonset;
    map['moon_phase'] = moonPhase;
    map['moon_illumination'] = moonIllumination;
    map['is_moon_up'] = isMoonUp;
    map['is_sun_up'] = isSunUp;
    return map;
  }
}

class Day extends DayEntity {
  Day({
    super.maxtempC,
    super.maxtempF,
    super.mintempC,
    super.mintempF,
    super.avgtempC,
    super.avgtempF,
    super.maxwindMph,
    super.maxwindKph,
    super.totalprecipMm,
    super.totalprecipIn,
    super.totalsnowCm,
    super.avgvisKm,
    super.avgvisMiles,
    super.avghumidity,
    super.dailyWillItRain,
    super.dailyChanceOfRain,
    super.dailyWillItSnow,
    super.dailyChanceOfSnow,
    super.condition,
    super.uv,
  });

  Day.fromJson(dynamic json) {
    maxtempC = json['maxtemp_c'];
    maxtempF = json['maxtemp_f'];
    mintempC = json['mintemp_c'];
    mintempF = json['mintemp_f'];
    avgtempC = json['avgtemp_c'];
    avgtempF = json['avgtemp_f'];
    maxwindMph = json['maxwind_mph'];
    maxwindKph = json['maxwind_kph'];
    totalprecipMm = json['totalprecip_mm'];
    totalprecipIn = json['totalprecip_in'];
    totalsnowCm = json['totalsnow_cm'];
    avgvisKm = json['avgvis_km'];
    avgvisMiles = json['avgvis_miles'];
    avghumidity = json['avghumidity'];
    dailyWillItRain = json['daily_will_it_rain'];
    dailyChanceOfRain = json['daily_chance_of_rain'];
    dailyWillItSnow = json['daily_will_it_snow'];
    dailyChanceOfSnow = json['daily_chance_of_snow'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    uv = json['uv'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maxtemp_c'] = maxtempC;
    map['maxtemp_f'] = maxtempF;
    map['mintemp_c'] = mintempC;
    map['mintemp_f'] = mintempF;
    map['avgtemp_c'] = avgtempC;
    map['avgtemp_f'] = avgtempF;
    map['maxwind_mph'] = maxwindMph;
    map['maxwind_kph'] = maxwindKph;
    map['totalprecip_mm'] = totalprecipMm;
    map['totalprecip_in'] = totalprecipIn;
    map['totalsnow_cm'] = totalsnowCm;
    map['avgvis_km'] = avgvisKm;
    map['avgvis_miles'] = avgvisMiles;
    map['avghumidity'] = avghumidity;
    map['daily_will_it_rain'] = dailyWillItRain;
    map['daily_chance_of_rain'] = dailyChanceOfRain;
    map['daily_will_it_snow'] = dailyWillItSnow;
    map['daily_chance_of_snow'] = dailyChanceOfSnow;
    map['uv'] = uv;
    return map;
  }
}

class Current extends CurrentEntity {
  Current({
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
    super.gustKph,
  });

  Current.fromJson(dynamic json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
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

class Location extends LocationEntity {
  Location({
    super.name,
    super.region,
    super.country,
    super.lat,
    super.lon,
    super.tzId,
    super.localtimeEpoch,
    super.localtime,
  });

  Location.fromJson(dynamic json) {
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
