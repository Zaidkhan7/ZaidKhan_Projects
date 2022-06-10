import 'package:bookmyshow/models/movie_info.dart';

class Movie_Operations{
  _Movie_Operations(){}
  static Movie_Operations _movieOperations = Movie_Operations();

  static Movie_Operations getInstance()
  {
    return _movieOperations;
  }

  List<Movie_Info> getmovieinfo()
  {
    return [
      Movie_Info(movie_name:'Hindi Medium' ,             movie_url: 'https://i.ytimg.com/vi/C6AKnuySrHU/maxresdefault.jpg',movie_type: "2D",movie_votes: "55000", language: "Hindi"),
      Movie_Info(movie_name:'Newton' ,                   movie_url: 'https://www.nowrunning.com/content/movie/2017/newto-20338/bg4.jpg',movie_type: "2D",movie_votes: "12000",language: "Hindi"),
      Movie_Info(movie_name:'SpiderMan :Far From Home' , movie_url: 'https://d.newsweek.com/en/full/1422531/spiderman-far-home-poster.jpg',movie_type: "2D/3D",movie_votes: "95000",language: "English/Hindi"),
      Movie_Info(movie_name:'Pushpa' ,                   movie_url: 'https://images.news18.com/ibnlive/uploads/2021/01/1611818353_pushpa-1.jpg',movie_type: "2D",movie_votes: "58000",language: "Telegu/Hindi"),
      Movie_Info(movie_name:'Jersey' ,                   movie_url: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-6nniqrfaomn6t7eporafn0c8c3-20211122145932.Medi.jpeg',movie_type: "2D/3D",movie_votes: "5000",language: 'Hindi')

    ];
    
  }
}