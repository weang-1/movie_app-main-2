import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailsScreen({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.deepPurple,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ✅ HERO ADDED HERE
            Center(
              child: Hero(
                tag: movie.title, // Same tag as in MovieCard
                child: Image.network(
                  movie.posterUrl,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              movie.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text("Year: ${movie.year}"),
            Text("Genre: ${movie.genre}"),
            Text("Director: ${movie.director}"),
            Text("Rating: ${movie.rating} ⭐"),
            Text("Duration: ${movie.duration} min"),

            const SizedBox(height: 15),

            const Text(
              "Description",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(movie.description),
          ],
        ),
      ),
    );
  }
}

