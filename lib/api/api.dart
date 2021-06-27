// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:flipr/api/mailclass.dart';

class MailsApi {
  final _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8081/'));

  //function to get the mails in the database
  Future<List> getMails(String emailId) async {
    final response = await _dio.get('$emailId');
    return response.data['mail'];
  }

  //function to add the mails to database
  Future<MailClass> createMail(String emailId, String mailBody, String sentTo,
      String starred, String time, String mailSub) async {
    final response = await _dio.post(
      '',
      data: {
        'emailId': emailId,
        'mailBody': mailBody,
        'sentTo': sentTo,
        'starred': starred,
        'time': time,
        'mailSub': mailSub,
      },
    );
    return MailClass.fromJson(response.data);
  }
}
