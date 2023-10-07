import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';

class WeatherModel {
  final String image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String cityName;
  final DateTime date;
  final String
      weatherCondition; //? make field nullable becuse well come from api
  
  WeatherModel(//? constructor
      {
       
    required this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.cityName,
    required this.date,
    required this.weatherCondition,
  });
  
  factory WeatherModel.makeobject(
      json) //! factory → to able me to return object
  {
    return WeatherModel(
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']), //? should convert befor stor it
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
        );
  }
  
}

