import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notee_app/app_router.dart';
import 'package:notee_app/presentaion/components/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      selectedItemColor: HexColor('#676767'),
      unselectedItemColor:  HexColor('#676767'),
      backgroundColor: HexColor('#CECECE'),
      items: [
        BottomNavigationBarItem(
            icon: IconButton( onPressed: () {
              NavigationPush(context, AppRouter.KDetailsScreenAlbum);
            }, icon: const Icon(Icons.add_a_photo_sharp),),
            label: 'Album'

        ),
        BottomNavigationBarItem(
            icon:IconButton( onPressed: () {  }, icon: const Icon(Icons.view_list,)),
            label: 'to do list'

        ),
        BottomNavigationBarItem(
            icon:IconButton( onPressed: () { }, icon: const Icon(Icons.notifications,)),
            label: 'Reminder'

        )
      ],
    );
  }
}
