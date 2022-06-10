import 'package:budgetmanager/modules/login/model/LoginModel.dart';
import 'package:budgetmanager/modules/login/model/googleSignInModel.dart';
import 'package:budgetmanager/modules/login/service/loginOperation.dart';
import 'package:budgetmanager/provider/google_sign_in.dart';
import 'package:budgetmanager/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  _takeValues() {
    _user = usertc.text;
    _pass = usertc.text;
    LoginModel lm = LoginModel.takeValues(username: _user, password: _pass);
    LoginOperations lopr = LoginOperations();
    lopr.checklogin(lm);
  }

  bool _isobscure = true;
  TextEditingController usertc = TextEditingController();
  TextEditingController passtc = TextEditingController();
  late String _user;
  late String _pass;



  _toNavigate(context,GoogleSignInAccount user) async {
    try{
      
      LoginOperations lopr = LoginOperations();
      GoogleModel gm = GoogleModel.takeValues(PhotoUrl: user.photoUrl, Name: user.displayName, Email: user.email);
        Navigator.pushReplacementNamed(context, RouteConstants.HOMEPAGE,
        arguments: {'googleModel':gm});
    }catch(err)
    {
      print("exception caught");
    }
    
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.blue.shade50,
            Colors.blue.shade100,
            Colors.blue.shade200,
            Colors.blue.shade300,
            Colors.blue.shade400,
            Colors.blue.shade500
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //backgroundImage: LinearGradient(begin: Alignment.topLeft , end: Alignment.bottomRight , colors: [Colors.blue , Colors.red] ),
        appBar: AppBar(
          title: Center(
              child: Text("Budget Manager",
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)))),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent),
                width: deviceSize.width,
              ),
            ),
            Positioned(
                top: 45,
                left: 150,
                child: Text("Login",
                    style: GoogleFonts.farro(
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)))),
            Positioned(
                top: 130,
                left: 33,
                width: deviceSize.width - 70,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Enter Username "),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                              style: BorderStyle.solid)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 3.0))),
                )),
            Positioned(
                top: 220,
                left: 33,
                width: deviceSize.width - 70,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Enter Password "),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue.shade300,
                              width: 2.0,
                              style: BorderStyle.solid)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 3.0))),
                )),
            Positioned(
                top: 330,
                left: 86,
                width: 200,
                height: 45,
                child: ElevatedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () => _takeValues(),
                )),
            Positioned(
                width: deviceSize.width - 65,
                left: 30,
                bottom: 190,
                height: 50,
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () async{
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    await provider.googleLogin();
                    _toNavigate(context , provider.user);
                  },
                  elevation: 10.0,
                )),
          ],
        ),
      ),
    );
  }
}
