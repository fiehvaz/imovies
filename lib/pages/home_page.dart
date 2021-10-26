import 'package:flutter/material.dart';
import 'package:imovies/controllers/movie_controller.dart';
import 'package:imovies/models/movies_model.dart';
import 'package:imovies/repositories/movies_repository.dart';
import 'package:imovies/repositories/movies_repository_imp.dart';
import 'package:imovies/services/dio_service_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(
      DioServiceImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<Movies?>(
            valueListenable: _controller.movies,
            builder: (_, movies, __) {
              return movies != null
                  ? ListView.builder(
                      itemCount: movies.listMovies.length,
                      itemBuilder: (_, idx) =>
                          Text(movies.listMovies[idx].title),
                    )
                  : Container();
            }));
  }
}
