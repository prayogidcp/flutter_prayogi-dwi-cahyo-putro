class UserModel {
  late String? name;
  late String? job;

  UserModel({
    required this.name,
    required this.job,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(name: json["name"], job: json["job"]);
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    map["name"] = name;
    map["job"] = job;

    return map;
  }
}
