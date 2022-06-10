class LoginModel
{
  late String username;
  late String password;

  LoginModel();

  LoginModel.takeValues({required String username ,required String password})
  {
      this.username=username;
      this.password=password;
      
  }
}