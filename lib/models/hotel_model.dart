class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hilton.jpg',
    name: 'Hilton Inn',
    address: '404 Great St',
    price: 1805,
  ),
  Hotel(
    imageUrl: 'assets/images/travellodgekasane.jpg',
    name: 'Travelodge',
    address: '404 Great St',
    price: 1900,
  ),
  Hotel(
    imageUrl: 'assets/images/proteahotel.jpg',
    name: 'Protea Hotel',
    address: '404 Great St',
    price: 1750,
  ),
];