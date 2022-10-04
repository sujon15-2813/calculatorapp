import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color;
  final textColor;
  final buttonText;
  final buttonTapped;

  MyButton({this.Color, this.textColor, this.buttonText, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: Color,
            child: Center(
                child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }
}
