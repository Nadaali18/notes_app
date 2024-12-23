import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: 'Title',
        hintStyle: TextStyle(color: Colors.purple[300],fontFamily: 'Lato',fontWeight: FontWeight.bold)
      ),
    );
  }
}