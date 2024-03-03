class UserModel {
  final String password;
  final String username;

  UserModel({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
  };

}
