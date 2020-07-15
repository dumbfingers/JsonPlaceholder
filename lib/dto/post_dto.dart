class PostDto {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostDto({this.userId, this.id, this.title, this.body});

  factory PostDto.fromJson(Map<String, dynamic> json) {
    return PostDto(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]);
  }
}
