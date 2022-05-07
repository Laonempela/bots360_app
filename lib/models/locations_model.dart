import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Locations {
  String name;
  String description;
  String youtubeLink;
  List<String> location;

  Locations({
    required this.name,
    required this.description,
    required this.youtubeLink,
    required this.location
});

  static Locations fromJson(Map<String, dynamic> json)=> Locations(
   name: json['name'],
   description: json['description'],
   youtubeLink: json['youtubeLink'],
   location: json['location'],
  );

}