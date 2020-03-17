import 'package:flutter/material.dart';

class AppInputWidget extends StatelessWidget {
  AppInputWidget({this.hintText, this.icon, this.controller, this.onChanged});

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String hintText;
  final Icon icon;

  _inputBorder(BuildContext context) =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(28), borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 1.89));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: onChanged,
        controller: controller,
        cursorColor: Theme.of(context).primaryColor,
        style: TextStyle(fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black.withAlpha(100)),
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            icon: icon,
            enabledBorder: _inputBorder(context),
            border: _inputBorder(context),
            focusedBorder: _inputBorder(context)));
  }
}
