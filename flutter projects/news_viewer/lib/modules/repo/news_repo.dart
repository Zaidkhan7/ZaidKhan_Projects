import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:news_viewer/modules/models/NewsModel.dart';

class NewsRepo
{
  var URL = Uri.parse("https://newsapi.org/v2/top-headlines?country=in&apiKey=de51668c7fc44a8480e2cdaeee63d7c1");

  NewsRepo._();
  static NewsRepo newsRepo = NewsRepo._();

  static NewsRepo getInstance()
  {
    return newsRepo;
  }

  final client= Dio();

  Future<List<NewsModel>> getNews() async 
  {
      List<NewsModel> news =[];
    //try{
        
        http.Response response =  await http.get(URL);
        // myModels=(json.decode(response.body) as List).map((i) =>
        //       NewsModel.FromJSON(i)).toList();
        
        
         Map<String,dynamic> body = json.decode(response.body);
         //print("Response body is ${body['articles']}");
         List<dynamic> list = body['articles'];
         //print("First Document..............${list[0]['title']}");
        // print("$body");
        // for(var item in list)
        // {
        //   news.add(NewsModel.FromJSON(item));
        // }
        news = list.map((newsarticle) => NewsModel.FromJSON(newsarticle)).toList();

        
    //}catch(e){print(e);}
      return news;
    
       
    
  }
}