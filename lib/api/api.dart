// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';

class MailsApi {
  final _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8081/'));

  Future<List> getMails(String emailId) async {
    final response = await _dio.get('$emailId');
    return response.data['mail'];
  }
}
