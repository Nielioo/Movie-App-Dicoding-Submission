part of 'pages.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(movie.moviePosterUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const FavoriteButton(),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Staatliches',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        '${movie.genre} • ${movie.duration}',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        movie.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Oxygen',
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Text(
                    "Casts",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Staatliches',
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    padding: const EdgeInsets.all(8.0),
                    scrollDirection: Axis.horizontal,
                    children: movie.castUrls.map((url) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(url),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(0.6),
        ),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFavorite = !_isFavorite;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(0.6),
        ),
        child: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
      ),
    );
  }
}
