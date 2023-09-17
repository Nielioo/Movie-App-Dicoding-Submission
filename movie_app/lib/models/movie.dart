class Movie {
  String title;
  String duration;
  String genre;
  String description;
  String moviePosterUrl;
  List<String> castUrls;

  Movie({
    required this.title,
    required this.duration,
    required this.genre,
    required this.description,
    required this.moviePosterUrl,
    required this.castUrls,
  });
}

var movieList = [
  Movie(
      title: 'Talk to Me',
      duration: '1h 35m',
      genre: 'Horror, Thriller',
      description: 'When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.',
      moviePosterUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kdPMUMJzyYAc4roD52qavX0nLIC.jpg',
      castUrls: [
        'https://www.themoviedb.org/t/p/w276_and_h350_face/3ImqawPfIsu95THFeCYGQw2500H.jpg',
        'https://www.themoviedb.org/t/p/w276_and_h350_face/jzY7CkJt40N3eYV3bKsRZq4DrjU.jpg',
        'https://www.themoviedb.org/t/p/w276_and_h350_face/nhkPLaVaDFVuI1oFRdJcgs95pyK.jpg',
      ],
  ),
  Movie(
    title: 'Cobweb',
    duration: '1h 28m',
    genre: 'Horror',
    description: 'Eight year old Peter is plagued by a mysterious, constant tapping from inside his bedroom wall—one that his parents insist is all in his imagination. As Peter\'s fear intensifies, he believes that his parents could be hiding a terrible, dangerous secret and questions their trustworthiness.',
    moviePosterUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cGXFosYUHYjjdKrOmA0bbjvzhKz.jpg',
    castUrls: [
      'https://www.themoviedb.org/t/p/w276_and_h350_face/i90RI9ySseYoy5AO5PA5Djod2Z8.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/efqC1XQSyHaRWYyTRWCQbbPOfRC.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/tAUT5x2RjxOOSmmaT7klf3G0sOx.jpg',
    ],
  ),
  Movie(
    title: 'Blue Beetle ',
    duration: '2h 8m',
    genre: 'Action, Science Fiction, Adventure',
    description: 'Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab.',
    moviePosterUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNfL4DYnonltukBrrgMmw94zMYL.jpg',
    castUrls: [
      'https://www.themoviedb.org/t/p/w276_and_h350_face/tJMI7BpjlhHSMpzSz9e1XxygnKd.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/mGDhenXwsFRaaz1PjbJjDkn2snc.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/oHYYL8bNakAREaLUBtMul5uMG0A.jpg',
    ],
  ),
  Movie(
    title: 'The Creator',
    duration: '2h 14m',
    genre: 'Science Fiction, Action, Thriller',
    description: 'Amid a future war between the human race and the forces of artificial intelligence, a hardened ex-special forces agent grieving the disappearance of his wife, is recruited to hunt down and kill the Creator, the elusive architect of advanced AI who has developed a mysterious weapon with the power to end the war—and mankind itself.',
    moviePosterUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vBZ0qvaRxqEhZwl6LWmruJqWE8Z.jpg',
    castUrls: [
      'https://www.themoviedb.org/t/p/w276_and_h350_face/qoOp8XvZ4v7B0C9ZmtoRCl9CDSO.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/mLKvNuCJSgyK0WdLd4ogO81sOO1.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/lm2FKwj2zO8ZsqMNFHm4KMtlNlM.jpg',
    ],
  ),
  Movie(
    title: 'Concrete Utopia',
    duration: '2h 10m',
    genre: 'Thriller, Science Fiction, Drama',
    description: 'The world has been reduced to rubble by a massive earthquake. While no one knows for sure how far the ruins stretch, or what the cause of the earthquake may be, in the heart of Seoul there is only one apartment building left standing. It is called Hwang Gung Apartments.',
    moviePosterUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bHH5jiumG6QXpvKfUEN2QsaBVV.jpg',
    castUrls: [
      'https://www.themoviedb.org/t/p/w276_and_h350_face/bZy15WXLhOflOgtQpICbgeeqzm6.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/pY4pwYO8qwtzvuzpzRczDACDiVA.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/zqz3Ymdiet0VC5UD0jReoiJMPkw.jpg',
    ],
  ),
  Movie(
    title: 'The Secret Kingdom',
    duration: '1h 38m',
    genre: 'Family, Fantasy, Adventure',
    description: 'Verity and Peter’s trip to the old family mansion takes a turn when the floor of their room suddenly gives way and they fall into an underground chamber where they are met by a civilization of creatures. The leader tells them that Peter\'s arrival was foretold as he\'s the one who can use Great Clock of the Citadel to restart time and destroy the Shroud, a malevolent creature who feeds on fear itself...',
    moviePosterUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dteXMzVY53GBHUgrR7vigAartsP.jpg',
    castUrls: [
      'https://www.themoviedb.org/t/p/w276_and_h350_face/hqMgRQzFrDOhPB7VknDaawuhw98.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/bynui72jV4eWQYhsrh5b54HILTA.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/oUMBIrSkYK4v6t4jAaCm2z0laoc.jpg',
    ],
  ),
  Movie(
    title: 'Across the Spider-Verse',
    duration: '2h 20m',
    genre: 'Animation, Action, Adventure',
    description: 'After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.',
    moviePosterUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg',
    castUrls: [
      'https://www.themoviedb.org/t/p/w276_and_h350_face/q4UpZMEuvNCN5lL5L6xa3ICpheJ.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/1UgDnFt3OteCJQPiUelWzIR5bvT.jpg',
      'https://www.themoviedb.org/t/p/w276_and_h350_face/uJNaSTsfBOvtFWsPP23zNthknsB.jpg',
    ],
  ),
];