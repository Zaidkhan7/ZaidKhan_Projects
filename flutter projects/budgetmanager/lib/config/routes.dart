import 'package:budgetmanager/modules/homepage/screen/homepage.dart';
import 'package:budgetmanager/modules/login/screen/login.dart';
import 'package:budgetmanager/utils/constants.dart';
import 'package:flutter/material.dart';

import '../modules/register/screen/register.dart';

Map<String,WidgetBuilder> getRoutes() {
  return{
    
  RouteConstants.LOGIN:(context) => const Login(),
  RouteConstants.REGISTER:(context)=> const Register(),
  RouteConstants.HOMEPAGE:(context)=> HomePage(),

  };
}