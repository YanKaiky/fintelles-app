// // ignore_for_file: depend_on_referenced_packages

// import 'dart:convert';

// class LoginRepository {
//   final _dio = DioApi().dio;

//   Future<String> login({
//     required String cpf,
//     required String password,
//   }) async {
//     try {
//       const route = '/login?role=user';

//       final base64 = base64Encode(utf8.encode('$cpf:$password'));

//       final response = await _dio.post(
//         route,
//         options: Options(
//           headers: {
//             'Authorization': 'Basic $base64',
//           },
//         ),
//       );

//       final token = response.data['token'];

//       await UserSecureStorage.setToken(token);

//       UserLoggedModel.instance = UserLoggedModel.fromJwt(token);

//       await UserSecureStorage.setFNRHUser(UserLoggedModel.instance.fnrh);
//       await UserSecureStorage.setService(UserLoggedModel.instance.service_guid);
//       await UserSecureStorage.setBirthDateUser(
//         UserLoggedModel.instance.birth_date,
//       );

//       return token as String;
//     } on DioError catch (e) {
//       final message = e.response?.data.toString() ?? 'Erro inesperado';

//       return translateErrorsMessage(message);
//     }
//   }
// }
