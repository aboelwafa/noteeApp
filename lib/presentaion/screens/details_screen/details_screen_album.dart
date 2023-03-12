import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notee_app/presentaion/screens/details_screen/widgetDetails/action_appbar.dart';
import 'package:notee_app/presentaion/screens/details_screen/widgetDetails/custom_datetime_details_screen.dart';

import '../../components/components.dart';
import '../../components/constants.dart';

class DetailsScreenAlbum extends StatelessWidget {
  const DetailsScreenAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#EFEFEF'),
      appBar: AppBar(
        backgroundColor: HexColor('#EFEFEF'),
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
      body:  Padding(
        padding: const EdgeInsets.only(left: 14),
        child:Column(
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
          const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 28,left: 3,right: 22),
              child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: HexColor('#FFFFFF'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Album',
                        style: TextStyle(
                          color: HexColor('#676767'),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Choose a picture',
                            style:
                            TextStyle(fontSize: 20, fontFamily: Myconstants.family,color: HexColor('#676767')),
                          )),
                      const SizedBox(
                        height: 4,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Take a picture',
                            style:
                            TextStyle(fontSize: 20, fontFamily: Myconstants.family,color: HexColor('#676767')),
                          )),
                      const SizedBox(
                        height: 17,
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}

