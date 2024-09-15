import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String hintText;
  bool obscureText ;
  TextEditingController controller;
  final FocusNode? focusNode;
   MyTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
     this.focusNode,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: TextField(
        controller:controller ,
        obscureText: obscureText,
       
        decoration: InputDecoration(
        labelText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary, ),
          ),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,),
          ),
          fillColor: Theme.of(context).colorScheme.surface,
          filled:true,
          // hintText:hintText,
          hintStyle: TextStyle(color:Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}