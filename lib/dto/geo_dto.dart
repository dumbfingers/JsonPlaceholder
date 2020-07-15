class GeoDto {
  final String lat;
  final String lng;

  GeoDto({this.lat, this.lng});

  factory GeoDto.fromJson(Map<String, String> json) {
    return GeoDto(lat: json["lat"], lng: json["lng"]);
  }
}
