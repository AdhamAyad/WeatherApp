import 'package:flutter/material.dart';
import 'package:weather_app/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.cloud , size: 32,),
            )
          ],
          leading: const Icon(Icons.sunny , size: 32,),
          backgroundColor: const Color(0XFF2D3250),
          centerTitle: true,
          title: const Text('Weather App' ,style: TextStyle(
            fontSize: 24
          ),),
        ),
        body:const HomeViewBody(),
      );
  }
}