import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key, required this.weather});
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(weather.weatherCondition,
             style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: AutofillHints.addressCity
                    ),),
        Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${weather.cityName}\n\n${weather.date.day}/${weather.date.month}',style:const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: AutofillHints.addressCity
                        ),),
                        
                        Image.network('https:${weather.image}'),
                  
                        Text('MaxTemp: ${weather.maxTemp}\n\nMinTemp: ${weather.minTemp}',style:const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: AutofillHints.addressCity
                        ),),
                  
                  
                      ],
                    ),
                  ),
      ],
    );
  }
}