// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notee_app/presentaion/screens/details_screen/widgetDetails/action_appbar.dart';
import 'package:notee_app/presentaion/screens/details_screen/widgetDetails/body_details_screen.dart';
import 'package:notee_app/presentaion/screens/details_screen/widgetDetails/custom_bottom_navigation_bar.dart';


class DetailsScreen extends StatelessWidget {
   DetailsScreen({Key? key}) : super(key: key);

  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: HexColor('#FEDE3F'),
            size: 30,
          ),
        ),
        title: Text(
          'Note',
          style: TextStyle(
            color: HexColor('#1D1D1D'),
            fontSize: 17,
            fontFamily: 'MyriadPro-Bold',
          ),
        ),
        actions: const [
          ActionAppBar(),
        ],

      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 14),
        child:BodyDetailsScreen(),
      ),

      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

}









