class TeacherResponse {
  TeacherResponse({
    required this.id,
    required this.name,
    required this.lastname,
    required this.email,
    required this.phone,
    required this.bio,
  });

  int id;
  String name;
  String lastname;
  String email;
  String phone;
  String bio;

  factory TeacherResponse.fromJson(Map<String, dynamic> json) => TeacherResponse(
        id: json["id"],
        name: json["name"],
        lastname: json["lastname"],
        email: json["email"],
        phone: json["phone"],
        bio: json["bio"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lastname": lastname,
        "email": email,
        "phone": phone,
        "bio": bio,
      };
}
