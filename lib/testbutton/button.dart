import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton({Key key, this.callback, this.text}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(30),
        child:MaterialButton(onPressed: callback,
        minWidth: 200.0,
        height: 45,
        color: Colors.transparent,
        child: Text(text),
        )
        
         ,),
    );
  }
}