import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notee_app/presentaion/components/components.dart';

class CustomDateTimeDetails extends StatelessWidget {
  const CustomDateTimeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MyTextMyriad(
        text: 'june 26,2022 08:05 PM',
        hexColor: HexColor('#201F1F'),
      fontSize: 12,

    );

  }
}