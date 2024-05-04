import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;

  const CustomTextForm({
    super.key,
    required this.hinttext,
    required this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 20,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 184, 184, 184),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
