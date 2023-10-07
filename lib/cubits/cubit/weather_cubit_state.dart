part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends  WeatherState {
  final WeatherModel weatherModel;
   WeatherLoadedState(this.weatherModel); //todo: ممكن ابعتو مع الاستيت
}

class WeatherFailiarState extends  WeatherState {
  final String errorMsg;
  WeatherFailiarState(this.errorMsg);
}
 
 
  
