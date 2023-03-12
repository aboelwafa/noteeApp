// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:go_router/go_router.dart';
void NavigationPush(context,String KScreen)
{
  return GoRouter.of(context).push(KScreen);
}
class Myconstants
{
   static const String family='';
}