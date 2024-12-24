import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.onTap,this.isLoading=false});
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(16)
        ),
        child:  Center(
          child:isLoading? const SizedBox(height: 24,width: 24, child:  CircularProgressIndicator()): const CustomText('Add',fontWeight: FontWeight.bold,fontSize: 20,),
        ),
      ),
    );
  }
}