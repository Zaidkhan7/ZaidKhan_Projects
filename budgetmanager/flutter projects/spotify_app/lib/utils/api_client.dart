import 'package:http/http.dart' as http;
import 'dart:convert' as jsonconvert;
import '../models/song.dart';
class ApiClient{

  void getSongs(Function successCallBack, Function failCallBack){
    
    
    String URL = "https://itunes.apple.com/search?term=25&limit=25";
    Future<http.Response> future = http.get(Uri.parse(URL));
    future.then((response){
      String json = response.body;
      // Doing JSON Conversion and Store in Song Model 
      Map<String, dynamic> map = jsonconvert.jsonDecode(json); // JSON convert into MAP
      List<dynamic> list = map['results']; // Get the List from the Map
      List<Song> songs = list.map((songMap)=>Song.fromJSON(songMap)).toList();
      print("Songs are $songs");
      successCallBack(songs);
       // Traverse the List and get the one by one map 
      
      print("Map is $map and Map Type ${map.runtimeType}");
      print("JSON $json");  // JSON Format
      print(json.runtimeType);
    }).catchError((err)=>failCallBack(err));
  }
  
}