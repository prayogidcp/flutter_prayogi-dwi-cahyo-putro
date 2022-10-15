class UserModel {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        avatar: json["avatar"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        id: json["id"]);
  }

  Map<dynamic, dynamic> toJson() => {
        id: id,
        email: 'email',
        firstName: 'first_name',
        lastName: 'last_name',
        avatar: 'avatar',
      };
}
