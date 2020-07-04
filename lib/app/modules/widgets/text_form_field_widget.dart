import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String value) onSaved;
  final Function(String value) onChanged;
  final Function(String value) validator;
  final bool emailCheck;
  final String text;
  final Widget sufixIcon;
  final TextInputAction action;
  final TextInputType type;
  final bool obscure;
  final TextEditingController controller;
  final TextDirection direction;
  final int max;

  CustomTextFormField(
      {this.emailCheck,
      this.text,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.sufixIcon,
      this.action,
      this.type,
      this.obscure = false,
      this.controller,
      this.direction = TextDirection.ltr,
      this.max,
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: this.max,
      textDirection: this.direction,
      controller: this.controller,
      obscureText: this.obscure,
      style: TextStyle(fontSize: 20),
      keyboardType: this.type,
      cursorColor: Colors.deepPurpleAccent,
      decoration: InputDecoration(
        
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purpleAccent)
        ),
          //contentPadding: EdgeInsets.only(top: 5),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple,),),
          labelText: this.text,
          suffixIcon: this.sufixIcon,),
      onChanged: (value) => this.onChanged(value),
      onSaved: (value) => this.onSaved(value),
      validator: (value) => this.validator(value),
      textInputAction: this.action,
    );
  }
}