import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/widgets/text_feild.dart';

import 'custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        //! عمل تدرج فى الالوان
        colors: [
          // Color(0XFFF9B17A),
          Color(0XFF2D3250),
          Color(0XFF424769),
          Color(0XFF676F9D),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Icon(
              FontAwesomeIcons.cloudSun,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextFieild(),
            ),
            SizedBox(
              height: 24,
            ),
            CustomButton(),
            SizedBox(
              height: 24,
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 130,),
            Text(
              'No Weather Yet ! \n Search For It',
              style: TextStyle(color: Colors.white, fontSize: 24),
            )
          ]),
    );
  }
}
