import 'package:flutter/material.dart';
import 'package:notee_app/app_router.dart';

import '../../components/constants.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body:  Image(
        width: size.width,
        height: size.height,
        image:const AssetImage('assets/images/s.png'),)
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      NavigationPush(context,AppRouter.KHomeScreen);
    });
  }
}
