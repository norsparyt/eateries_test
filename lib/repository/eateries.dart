import 'package:food_app/models/eatery.dart';

class Eateries {
  List<Eatery> fetchAllEateries() {
    return [
      Eatery('Chaap Hut', '11 AM - 11 PM', 'All the Delhi specials', 'B1'),
      Eatery('Chatkara', '10 AM - 2 AM', 'Snacks and Indian Cuisine', 'B4'),
      Eatery('Chilling Point', '11 AM - 11 PM', 'Ice-cream, drinks and more',
          'B1 1st Floor'),
      Eatery('The Crazy Chef', '11 AM - 2 AM',
          'Quick Bites, Fast Food,\nAmerican', 'G4'),
      Eatery(
          'Cruncheez', '11 AM - 11 PM', 'Chinese, Fast food', 'B1 1st,Floor'),
      Eatery('Delight Shakes', '11 AM - 11 PM', 'Affordable Nutritious\nFood',
          'B4'),
      Eatery(
          'Dev Sweets', '11 AM - 2 AM', 'Sandwiches, Burgers\nand Shakes', 'B1'),
      Eatery(
          'Dialog', '11 AM - 2 AM', 'Intercontinental Cuisine', 'G1 1st floor'),
      Eatery('Indie Vibes', '11 AM - 11 PM', 'Authentic Indian Food', 'G1'),
      Eatery('Kebab Nation', '12AM - 2 AM', 'Indian Cuisine', 'G2'),
      Eatery(
          "Let's Go Live", '11 AM - 11 PM', 'Italian Cuisine', 'G1 1st Floor'),
      Eatery('Login', '10 AM - 2 AM', 'Intercontinental Cuisine', 'G1'),
      Eatery('Saras Drinks', '8 AM - 2 AM', 'Juices, Shakes, Snacks', 'G1'),
      Eatery(
        'Saras Food',
        '10 AM - 2 AM',
        'Indian and Fast Food',
        'G1',
      ),
      Eatery('Tandoor', '11 AM - 2 AM', 'North Indian Cuisine', 'B4'),
      Eatery('Tea Tradition', '10 AM - 10 PM', 'Intercontinental Cuisine',
          'B1 1st Floor'),
      Eatery('Yangse', '11 AM - 11 PM', 'Chinese Cuisine', 'B1'),
      Eatery('Yo Zing', '9 AM - 2 AM', 'Intercontinental Cuisine', 'B1')
    ];
  }
}
