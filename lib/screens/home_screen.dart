import 'package:flutter/material.dart';
import 'package:movie_app/data/movie_data.dart';
import 'package:movie_app/widgets/movie_card.dart';
import 'package:movie_app/screens/movie_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: GridView.builder(
          itemCount: movies.length,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),

          itemBuilder: (context, index) {
            final movie = movies[index];

            return MovieCard(
              movie: movie,

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MovieDetailsScreen(movie: movie),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

