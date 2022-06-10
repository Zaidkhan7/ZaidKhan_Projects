// All Application Routes are placed Here
// Routes - Navigation
import 'package:flutter/material.dart';
import 'package:shoppingapp/core/auth/models/user.dart';
import 'package:shoppingapp/modules/screens/dashboard.dart';
import '/core/auth/screens/login.dart';
import '/core/auth/screens/register.dart';
import '/utils/constants.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    RouteConstants.LOGIN: (context) => const Login(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    RouteConstants.REGISTER: (context) => const Register(),
    RouteConstants.HOMEPAGE:(context) =>  const DashBoard()

  };
}
