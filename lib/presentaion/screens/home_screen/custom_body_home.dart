import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notee_app/constants/styles.dart';
import 'package:notee_app/presentaion/screens/home_screen/custome_text_field.dart';
import 'package:notee_app/app_router.dart';
import '../../components/components.dart';
import '../../components/constants.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Text(
              'Notedpad',
              style: Styles.textStyle30,
            ),
             SizedBox(
              height: 30,
            ),
             CustomeTextField(),
             SizedBox(
              height: 30,
            ),

            myContainers(),
        ]
            ),
        ),

      floatingActionButton: CircleAvatar(
        backgroundColor: HexColor('#fede3f'),
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.add,size: 22,color: HexColor('#000000'),),
        ),
      ),
    );
  }
}
// ignore: camel_case_types
class myContainers extends StatelessWidget {
  const myContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         GestureDetector(
           onTap: (){
             NavigationPush(context,AppRouter.KDetailsScreen);
           },
           child: myContainer(
              backGround: HexColor('#a4ffc5'),
              text: 'Today Grocery Lists',
              dateTime: 'June 22,2022 5:00 PM ',
            ),
         ),
        const SizedBox(height: 15,),
        myContainer(
        backGround: HexColor('#fffca4'),
        text: 'Rich dad Poor dad quotes',
        dateTime: 'June 22,2022 5:00 PM',
      )
      ],
    );
  }
}

