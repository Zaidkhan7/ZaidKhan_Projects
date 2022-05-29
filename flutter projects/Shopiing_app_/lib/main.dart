import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '/config/routes.dart';
import '/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RouteConstants.LOGIN, // This is the Initial or Base Route
    routes: getRoutes(), // All Routes are loaded Here
  ));
}
