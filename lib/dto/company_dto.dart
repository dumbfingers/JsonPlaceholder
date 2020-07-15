class CompanyDto {
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyDto({this.name, this.catchPhrase, this.bs});

  factory CompanyDto.fromJson(Map<String, String> json) {
    return CompanyDto(
        name: json["name"], catchPhrase: json["catchPhrase"], bs: json["bs"]);
  }
}
