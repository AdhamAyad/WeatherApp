import 'package:flutter/material.dart';

class TextFieild extends StatelessWidget {
  const TextFieild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
              vertical: 24, horizontal: 16), //! padding inside textfield
          hintText: 'Enter City Name', // hint text that show on text field
          hintStyle: TextStyle(
            fontFamily: AutofillHints.addressCity,
            color: Colors.white.withOpacity(.3),
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(16)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(16))),
    );
  }
}