import 'package:budgetmanager/modules/homepage/service/homepage_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../login/model/googleSignInModel.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    GoogleModel _user = arguments['googleModel'];
    
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                      radius: (52),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("${_user.PhotoUrl}"),
                          )
                        )
                      ),
              
              Padding(padding: EdgeInsets.fromLTRB(90, 20, 0, 0), child: Text("${_user.Name}" , style: GoogleFonts.roboto(fontSize: 20 , fontWeight: FontWeight.bold),)),
              Padding(padding: EdgeInsets.fromLTRB(30, 5, 0, 0), child: Text("${_user.Email}" , style: GoogleFonts.roboto(fontSize: 20),)),
              ListTile()
            ],
          ),
        ),
        appBar: AppBar( title: Text("BUDGET MANAGER" , style: GoogleFonts.breeSerif()),
          
        
        )
        
        );
  }
}