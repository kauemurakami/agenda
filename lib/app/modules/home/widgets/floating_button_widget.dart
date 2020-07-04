import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final VoidCallback callback;
  final IconData icon;

  CustomFloatingButton({this.callback, this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(this.icon),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        splashColor: Colors.purpleAccent,
        elevation: 8,
        onPressed: this.callback);
  }
}
