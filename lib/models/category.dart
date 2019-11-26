import 'package:brix_flix/models/movie.dart';

class Category {
  String name;
  List<Movie> movies;

  Category(this.name, this.movies);

    static List<Category> fetchAll() {
    return [
      Category('Now Playing',
        [
          Movie('12434', 'Joker', 'http://www.zawyacinema.com/uploads/film/494/poster/joker-poster-main2.jpg',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
          Movie('23432', 'Avengers - Endgame', 'https://dgeiu3fz282x5.cloudfront.net/g/l/l-245099.jpg',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.',
              'Action, Sci-Fi'
              ),
          Movie('126534434', 'Captain Marvel', 'https://www.homewallmurals.co.uk/ekmps/shops/allwallpapers/images/captain-marvel-epic-61x91-5cm-movie-poster-31596-1-p.jpg',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
          Movie('56434342', 'Black Panther', 'https://www.washingtonpost.com/graphics/2019/entertainment/oscar-nominees-movie-poster-design/img/black-panther-web.jpg',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.',
              'Action, Sci-Fi'
              ),
          Movie('434232', 'Blade Runner', 'https://www.movieposters4u.com/images/b/BladeRunner2049Final.jpg',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
          Movie('54332323', 'Dunkirk', 'https://images-na.ssl-images-amazon.com/images/I/71nsvxFpSTL._SY606_.jpg',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.',
              'Action, Sci-Fi'
              ),
          Movie('54332', 'Moon Light', 'https://images-na.ssl-images-amazon.com/images/I/51RJnNQjQ8L.jpg',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
          Movie('423232', 'Star Wars - Episode VIII - The last jedi', 'https://mvpo.us/img/P5848.jpg',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.',
              'Action, Sci-Fi'
              ),
          Movie('1245423234', 'Maleficent', 'https://www.tttc.ca/wp-content/uploads/2017/12/maleficent.jpg',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
          Movie('544232', 'Ready Player One', 'https://cdn.shopify.com/s/files/1/0747/3829/products/mL1483_1024x1024.jpg?v=1520444451',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.',
              'Action, Sci-Fi'
              ),
          Movie('17454532434', 'Venom', 'https://www.bestmovieposters.co.uk/wp-content/uploads/2019/01/inCmCRl_.jpeg',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.',
              'Action, Sci-Fi'
              ),
          Movie('743423243', 'Beauty and the beast', 'https://images-na.ssl-images-amazon.com/images/I/91p8sSMXpkL._SY679_.jpg',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
          Movie('754342', 'John wick - chapter 2', 'https://images-na.ssl-images-amazon.com/images/I/91H06HPhX%2BL._SY679_.jpg',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.',
              'Action, Sci-Fi'
              ),
          Movie('8565343', 'Bright Burn', 'https://cdna.artstation.com/p/assets/images/images/019/030/490/large/idhams-kenway-brightburn-poster.jpg?1561701374',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
          Movie('675453423', 'US', 'http://hollywoodlocations.com/wp-content/uploads/2019/01/us-movie-poster.jpg',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
              'Action, Sci-Fi'
              ),
        ]
      ),
    ];
  }
}
