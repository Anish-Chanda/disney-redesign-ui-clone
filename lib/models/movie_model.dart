class Movie {
  String imgUrl;
  String name;
  int year;
  String duration;
  double imdbRating;
  String description;
  String director;
  List stars;
  String musicBy;

  Movie({
    required this.imgUrl,
    required this.musicBy,
    required this.name,
    required this.year,
    required this.duration,
    required this.description,
    required this.imdbRating,
    required this.director,
    required this.stars,
  });
}
