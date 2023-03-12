import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../components/components.dart';
import 'custom_datetime_details_screen.dart';

class BodyDetailsScreen extends StatelessWidget {
  const BodyDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 19,),
        const CustomDateTimeDetails(),
        const SizedBox(height: 29,),
        //title
        MyTextMyriad(
            text: 'Title', hexColor: HexColor('#676767'), fontSize: 30),
        const SizedBox(height: 23,),
        //today gorcy list
        MyTextMyriad(
            text: 'Today grocy List', hexColor: HexColor('#201F1F'), fontSize: 15),
        const SizedBox(height: 29,),
        //  list order
        MyTextMyriad(
            text: '2 peantus', hexColor: HexColor('#201F1F'), fontSize: 15),
        MyTextMyriad(
            text: '1 kg mangos', hexColor: HexColor('#201F1F'), fontSize: 15),
        MyTextMyriad(
            text: '12 bananas', hexColor: HexColor('#201F1F'), fontSize: 15),



      ],
    );
  }
}
