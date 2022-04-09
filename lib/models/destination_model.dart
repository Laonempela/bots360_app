
import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List <Activity> activities;

  Destination ({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/gaborone.jpg',
    name: 'Mokoro Ride',
    type: 'Boat Ride',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/kasane.jpg',
    name: 'Hiking',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/kazungula.jpg',
    name: 'kazungula Bridge Run',
    type: 'Adventure',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/gaborone.jpg',
    city: 'Gaborone',
    country: 'Botswana',
    description: 'Visit Gaborone for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/kasane.jpg',
    city: 'kasane',
    country: 'Botswana',
    description: 'Visit kasane for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/maun.jpg',
    city: 'maun',
    country: 'Botswana',
    description: 'Visit maun for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/okavango.jpg',
    city: 'Okavango',
    country: 'Botswana',
    description: 'Visit Okavango for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/tsodilo.jpg',
    city: 'tsodilo',
    country: 'Botswana',
    description: 'Visit tsodilo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];