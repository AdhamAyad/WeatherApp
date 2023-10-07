import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
                padding: EdgeInsets.only(top: 130),
                child: Text(
                  'No Weather Yet ! \n Search For It',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              );
  }
}