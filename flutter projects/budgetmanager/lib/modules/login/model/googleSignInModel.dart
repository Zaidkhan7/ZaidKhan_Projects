class GoogleModel{

  String? PhotoUrl;
  String? Name;
  String? Email;

 GoogleModel();

 GoogleModel.takeValues({required String? PhotoUrl ,required String? Name ,required String? Email}){

   this.PhotoUrl=PhotoUrl;
   this.Name=Name;
   this.Email=Email;
 }
}