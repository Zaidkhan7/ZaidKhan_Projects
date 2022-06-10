import 'package:budgetmanager/modules/login/model/googleSignInModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '/modules/login/model/LoginModel.dart';
import '/utils/constants.dart';

class LoginOperations{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  
 
  
  
  
  
  Future<String> checklogin(LoginModel loginModel)async{
   
    try{
      await _auth.signInWithEmailAndPassword(
      email: loginModel.username, password: loginModel.password
      );
      return Constants.LOGIN_SUCCESS;

    }catch(err)
    {
      return Constants.LOGIN_FAIL;
    }
    

  }
}