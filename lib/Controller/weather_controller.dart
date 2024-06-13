import 'package:projeto_api_geo/Service/weather_service.dart';
import '../Model/weather_model.dart';

class WeatherController {
  final List<Weather> _weatherList = [];
  List<Weather> get weatherList => _weatherList;

  final WeatherService _service = WeatherService();

  Future<void> getWeather(String city) async {
    try {
      Weather weather = Weather.fromJson(await _service.getWeather(city));
      _weatherList.add(weather);
      print(weather.getNotificationMessage()); // Exibe a notificação
    } catch (e) {
      print(e);
    }
  }

  Future<void> getWeatherbyLocation(double lat, double lon) async {
    try {
      Weather weather = Weather.fromJson(await _service.getWeatherbyLocation(lat, lon));
      _weatherList.add(weather);
      print(weather.getNotificationMessage()); // Exibe a notificação
    } catch (e) {
      print(e);
    }
  }

  Future<bool> findCity(String city) async {
    try {
      return await _service.findCity(city);
    } catch (e) {
      print(e);
      return false;
    }
  }
}
