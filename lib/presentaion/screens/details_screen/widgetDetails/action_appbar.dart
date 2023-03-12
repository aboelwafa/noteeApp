import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ActionAppBar extends StatelessWidget {
  const ActionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share_outlined,
              size: 30,
              color: HexColor('#FEDE3F'),
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              size: 30,
              color: HexColor('#FEDE3F'),
            )),
      ],
    );
  }
}
