import 'package:flutter/material.dart';
import 'package:notee_app/constants/mycolors.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MyColors.grey,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
          border: outLineInput(),
          focusedBorder: outLineInput(),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search notes',
          prefixIconColor: MyColors.grey,
          hintStyle: const TextStyle()
      ),
    );
  }
  OutlineInputBorder outLineInput()
  {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
    );
  }
}
