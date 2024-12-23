import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint, this.maxLines=1,this.onSaved});
final String hint;
final int maxLines;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.purple[300],fontFamily: 'Lato',fontWeight: FontWeight.bold)
      ),
    );
  }
}