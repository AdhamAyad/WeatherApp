import 'package:flutter/material.dart';

class TextFieild extends StatelessWidget {
  const TextFieild({
    super.key, this.onSubmitted,
  });
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        //filled: true,
        //fillColor: Color(0XFF424769),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 24, horizontal: 16), //! padding inside textfield
          hintText: 'Enter City Name', // hint text that show on text field
          hintStyle: TextStyle(
            fontFamily: AutofillHints.addressCity,
            color: Colors.white.withOpacity(.3),
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0XFFF9B17A),
          ),
          focusedBorder:OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0XFFF9B17A), width: 1),
              borderRadius: BorderRadius.circular(16)), 
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(16)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(16))),
              
    );
  }
}