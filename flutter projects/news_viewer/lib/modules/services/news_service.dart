import 'dart:convert';

//import 'package:madproject/modules/models/order.dart';
import 'package:news_viewer/modules/models/NewsModel.dart';

class NewsService{

  List<NewsModel> convertNews(dynamic NewsData)
  {
    late List<NewsModel> news = [];
    String str  = NewsData.data.toString();
    Map temp = json.decode(str);
    List<dynamic> list = [];
    list = temp['articles'];
    news = list.map((onenews) => NewsModel.FromJSON(onenews)).toList();
    return news;  

  }
  
}