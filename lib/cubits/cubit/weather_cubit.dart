import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import '../../model/weather_model.dart';
import '../../services/weather_service.dart';
part 'weather_cubit_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(NoWeatherState()); //? this is the intial state befor doing any thing

  WeatherModel? weatherModel; // todo: when i access the cubit i can take data dirictily
  
  getWeather ({required String cityName}) 
  async {
    
    try { 
     weatherModel =
          await WeatherService(Dio()).getWeather(cityName: cityName); 
      emit(WeatherLoadedState(weatherModel!)); 
    } 

    catch (e) {
      emit(WeatherFailiarState(e.toString())); //? if there is an error
    }
    
  }
}
