// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:notee_app/constants/styles.dart';

Widget myContainer({
  double height = 100,
  double width = double.infinity,
  Color? backGround,
  double raduis = 30,
  double horizontal = 10,
  double vertical = 10,
  String? text,
  String? dateTime,
  TextStyle? style,
  double maxHeight = 500,
  int maxLine = 3,
  TextOverflow overflow = TextOverflow.ellipsis,
}) =>
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backGround, borderRadius: BorderRadius.circular(raduis)),
      constraints: BoxConstraints(
        maxHeight: maxHeight,
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                maxLines: maxLine,
                overflow: TextOverflow.ellipsis,
                text!,
                style: Styles.textStyle24,
              ),
            ),
            const Spacer(),
            Expanded(
              child: Text(
                maxLines: maxLine,
                overflow: TextOverflow.ellipsis,
                dateTime!,
                style: Styles.textStyle18,
              ),
            )
          ],
        ),
      ),
    );
Widget MyTextMyriad(
        {required String text,
        required Color hexColor,
        required double fontSize,
        String fontFamily = 'MyriadPro-Bold'}) =>
    Text(
      text,
      style: TextStyle(
        color: hexColor,
        fontSize: fontSize,
        fontFamily: fontFamily,
      ),
    );

// Widget ContainerNavBar() => Container(
//       height: 117,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 12.0, left: 10),
//         child: Column(
//           children: [
//             Text(
//               'Album',
//               style: TextStyle(
//                 color: HexColor('#676767'),
//                 fontSize: 15,
//               ),
//             ),
//             SizedBox(
//               height: 18,
//             ),
//             TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   'Choose a picture',
//                   style:
//                       TextStyle(fontSize: 20, fontFamily: Myconstants.family,color: HexColor('#676767')),
//                 )),
//             SizedBox(
//               height: 4,
//             ),
//             TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   'Take a picture',
//                   style:
//                   TextStyle(fontSize: 20, fontFamily: Myconstants.family,color: HexColor('#676767')),
//                 )),
//           ],
//         ),
//       ),
//     );
