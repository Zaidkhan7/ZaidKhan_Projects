

class NewsModel{

  late String title;
  late String description;
  late String publishedAt;
  late String url;
  late String imageUrl;
  late String content;
  late String author;
  late bool isfavourite=false;
  NewsModel({required this.title,required this.description , required this.publishedAt , required this.url , required this.imageUrl , required this.content , required this.author});  

  NewsModel.FromJSON(Map<String, dynamic> data) {
    
    print(data);
    publishedAt = data["publishedAt"]==null? "":data["publishedAt"];
    description = data["description"]==null? "":data["description"];
    title = data["title"]==null? "":data["title"];
    url = data["url"]==null? "": data["url"];
    imageUrl = data["urlToImage"]==null? "":data["urlToImage"];
    content = data["content"]==null?"":data["content"];
     author = data["author"]==null?"":data["author"];
   
  }


}