import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;

  const MovieCard({
    super.key,
    required this.movie,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // ✅ Use callback from HomeScreen

      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // ✅ HERO ADDED HERE
            Expanded(
              child: Hero(
                tag: movie.title, // Same as in details screen
                child: Image.network(
                  movie.posterUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),

              child: Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
