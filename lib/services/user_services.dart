part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> signIn(
      String email, String password) async {
    await Future.delayed(Duration(microseconds: 500));
    return ApiReturnValue(value: mockUser);

    // return ApiReturnValue(message: 'Wrong password');
<<<<<<< HEAD
    // 316
=======
>>>>>>> cd66a26e2c14bb38f3e2090d7a212f32b7404fb8
  }
}
