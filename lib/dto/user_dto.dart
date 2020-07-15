import 'address_dto.dart';
import 'company_dto.dart';

class UserDto {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressDto address;
  final String phone;
  final String website;
  final CompanyDto company;

  UserDto(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: json["address"],
        phone: json["phone"],
        website: json["website"],
        company: json["company"]);
  }
}
