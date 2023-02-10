class Hotel {
  String? imageUrl;
  String? name;
  String? address;
  int? price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/LA MAMOUNIA.jpg',
      name: 'La Mamounia',
      address: '',
      price: 23),
  Hotel(
      imageUrl: 'assets/images/L\'Heure Bleue Palais.jpg',
      name: 'L\'Heure Bleue Palais',
      address: '',
      price: 12),
  Hotel(
      imageUrl: 'assets/images/ROYAL MANSOUR.jpg',
      name: 'Royal Mansour',
      address: '',
      price: 43),
  Hotel(
      imageUrl: 'assets/images/Four Seasons Hotel.jpg',
      name: 'Four Seasons Hotel',
      address: '',
      price: 12),
  Hotel(
      imageUrl: 'assets/images/Puerta Azul.jpg',
      name: 'Puerta Azul',
      address: '',
      price: 77),
];
