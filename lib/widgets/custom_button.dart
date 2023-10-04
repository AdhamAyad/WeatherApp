import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0XFFF9B17A), borderRadius: BorderRadius.circular(8)),

      width:
          280, //? MediaQuery.of(context).size.width → take all widget can to take in width
      height: 55,
      child:const Center(
          child: Text(
        'Search',
        style: TextStyle(
          fontSize: 18,
            color: Colors.white,
             fontFamily: AutofillHints.addressCity),
      )),
    );
  }
}