// ignore_for_file: constant_identifier_names, depend_on_referenced_packages, prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'package:notee_app/presentaion/screens/details_screen/details_screen.dart';
import 'package:notee_app/presentaion/screens/details_screen/details_screen_album.dart';

import 'presentaion/screens/home_screen/home_screen.dart';
import 'presentaion/screens/splashScreen/splash_screen.dart';

abstract class AppRouter {
  static const String KSplashScreen = '/';
  static const String KHomeScreen = '/homeScreen';
  static const String KDetailsScreen = '/detailsScreen';
  static const String KDetailsScreenAlbum = '/detailsScreenAlbum';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: KSplashScreen,
        builder: (context, state) =>  SplashScreen(),
      ),
      GoRoute(
        path: KHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: KDetailsScreen,
        builder: (context, state) =>  DetailsScreen(),
      ),
      GoRoute(
        path: KDetailsScreenAlbum,
        builder: (context, state) =>  DetailsScreenAlbum(),
      ),
    ],
  );
}
