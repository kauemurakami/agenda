import 'package:agenda/app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends RaisedButton {
  final String text;
  final VoidCallback callback;
  CustomButtonWidget({@required this.text, this.callback,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 0.5,
      height: 50,
      child: RaisedButton(
        autofocus: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
          onPressed: this.callback,
          child: Text(
            this.text,
            style: textButton,
          ),
          color: Colors.purple),
    );
  }
}