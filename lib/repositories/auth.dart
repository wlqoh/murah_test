
import 'package:dio/dio.dart';
import 'package:murad_ahmed/models/user_model.dart';

class AuthRepository {
  final dio = Dio();
  static const api =
      'https://8ec5-185-244-21-222.ngrok-free.app/api/authorization/userdb/';

  Future<UserModel?> login(
      {required String username, required String password}) async {
    final data = {
      'name': username,
      'password': password,
    };
    final Response response;
    response = await dio.post(api, data: data);
    if (response.statusCode == 200) {
      final body = response.data;
      print(body);
      return UserModel(password: password, username: username);
    } else {
      print(response.statusCode);
      return null;
    }
  }

}
