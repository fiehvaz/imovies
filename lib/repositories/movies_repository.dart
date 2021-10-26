import 'package:imovies/models/movies_model.dart';

abstract class MoviesRepository {
  Future<Movies> getMovies();
}
