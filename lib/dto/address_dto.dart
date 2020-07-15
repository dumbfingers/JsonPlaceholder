import '../dto/geo_dto.dart';

class AddressDto {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoDto geo;

  AddressDto({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory AddressDto.fromJson(Map<String, dynamic> json) {
    return AddressDto(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: json["geo"]);
  }
}
