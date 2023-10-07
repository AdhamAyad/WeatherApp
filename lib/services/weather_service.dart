import 'dart:developer';
import 'package:dio/dio.dart';

import '../model/weather_model.dart';


class WeatherService {
  //? it return response ready as a Map to Put dirictily on model
  final Dio dio; 
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '236ba75b582b43118c6104037232507';

  WeatherService(this.dio); //? constructor
  //? future with weathermodel type
  Future<WeatherModel> getWeather({required String cityName}) async { 
    try {//? make try and catch to catch the ex

      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      //Map<String,dynamic> data = jsonDecode(response.data); //?do't neead to make it
      WeatherModel weatherModel =
          WeatherModel.makeobject(response.data); //!  do't nead to decode it
          return weatherModel; // if code go correct return itt

    } on DioException catch (e) { //! on DioException → to know what happens with dio
    
      //? left??right → if left is null do that on right
      final String erroraMessage = e.response?.data['error']['massage']?? 'oops there is an error try again';
      throw Exception(erroraMessage); // throw it to user

    }
    catch(e)// todo: if error not from dio
    {
      log(e.toString());//? print it on tirminal
      throw Exception('try again in next time'); // throw it to user
    }
  }
}

