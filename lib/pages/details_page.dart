import 'package:flutter/material.dart';
import 'package:imovies/models/movies_model.dart';
import 'package:imovies/utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  final Movie movie;
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .55,
                width: MediaQuery.of(context).size.height,
                child: Hero(
                  tag: movie.id,
                  child: Image.network(
                    API.REQUEST_IMG(movie.posterPath),
                    loadingBuilder: (_, child, progress) {
                      if (progress == null) return child;
                      return CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(movie.overview,
                  style: Theme.of(context).textTheme.subtitle1),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.title),
                  Text(movie.originalTitle),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.date_range),
                  Text(movie.releaseDate),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
