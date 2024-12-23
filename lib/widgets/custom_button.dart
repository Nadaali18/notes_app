import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(
        child: CustomText('Save',fontWeight: FontWeight.bold,fontSize: 20,),
      ),
    );
  }
}