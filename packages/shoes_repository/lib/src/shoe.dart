class Shoe {
  final String name;
  final double price;
  final String imageUrl;
  final String descriptio;

  Shoe(
      {required this.name,
      required this.price,
      required this.imageUrl,
      required this.descriptio});
}

final List<Shoe> shoes = [
  Shoe(
      name: 'Nike Air Force 1',
      price: 15000,
      imageUrl: 'assets/shoes/nike_air_force_1.jpg',
      descriptio: 'Nice looking premium quality sneakers'),
  Shoe(
      name: 'Nike Air Force 1 Orange',
      price: 15900,
      imageUrl: 'assets/shoes/nike_air_force_1_orange.webp',
      descriptio: 'Nice looking premium quality sneakers'),
  Shoe(
      name: 'Nike Dunk',
      price: 9000,
      imageUrl: 'assets/shoes/nike_dunk.webp',
      descriptio: 'Amazing sneakers for amazing people'),
  Shoe(
      name: 'Nike Motiva',
      price: 6000,
      imageUrl: 'assets/shoes/nike_motiva.webp',
      descriptio: 'Run with comfort'),
];
