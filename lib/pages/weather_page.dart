import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';


class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //api key
  final weatherService = WeatherService(dotenv.env['WEATHER_API_KEY']!);
  Weather? _weather;

  //fetch weather
  fetchWeather() async {
    //get current city
    String cityName = await weatherService.getCurrentCity();

    //get weather data for the current city
    try {
      final weather = await weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    //errors
    catch (e) {
     return Center(child: Text('${e}'));
    }
  }

  //weather animations

  //init state
  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center( child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //city name
          Text(_weather?.cityName ?? 'loading city..'),
          //animation
          Lottie.asset('lib/assets/sunny.json'),
          //temperature
          Text(
              '${_weather?.temperature.round().toString() ?? 'loading temp..'}°C')
        ],
      )
    ));
  }
}