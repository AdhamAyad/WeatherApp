import 'package:flutter/material.dart';

class ErrorWeather extends StatelessWidget {
  const ErrorWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
                padding: EdgeInsets.only(top: 130),
                child: Text(
                  'There Is An Error ! \n Try Again',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              );
  }
}