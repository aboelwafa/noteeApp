// ignore_for_file: use_key_in_widget_constructors, depend_on_referenced_packages, library_prefixes, unused_local_variable, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:notee_app/app_router.dart';

import 'constants/mycolors.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp( const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'NoteApp',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor:MyColors.primaryColor,
          elevation: 0.0,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: MyColors.primaryColor,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
