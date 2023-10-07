import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/cubits/cubit/weather_cubit.dart';
import 'package:weather_app/widgets/error_weather.dart';
import 'package:weather_app/widgets/no_weather.dart';
import 'package:weather_app/widgets/text_feild.dart';
import 'package:weather_app/widgets/weather_info.dart';

import 'custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      //width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        //! عمل تدرج فى الالوان
        colors: [
          // Color(0XFFF9B17A),
          Color(0XFF2D3250),
          Color(0XFF2D3250),
          Color(0XFF424769),
          Color(0XFF676F9D),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 40,
          ),
          const Icon(
            FontAwesomeIcons.cloudSun,
            size: 80,
            color: Colors.white,
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextFieild(
              onSubmitted: (data) {
                BlocProvider.of<WeatherCubit>(context)
                    .getWeather(cityName: data);
              },
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
            height: 80,
          ),
          BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
            if (state is NoWeatherState) {
              return const NoWeather();
            } else if (state is WeatherLoadedState) {
              return WeatherInfo(
                weather: state.weatherModel,
              ); //! or → BlocProvider.of<WeatherCubit>(context).weatherModel
            } else {
              return const ErrorWeather();
            }
          })
        ]),
      ),
    );
  }
}
