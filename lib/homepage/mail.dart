import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:flipr/api/api.dart';

class Mail extends StatefulWidget {
  Mail(
      {Key? key,
      required this.s1,
      required this.s2,
      required this.s3,
      required this.s4})
      : super(key: key);
  final String s1;
  final String s2;
  final String s3;
  final String s4;
  final MailsApi api = MailsApi();

  @override
  _MailState createState() => _MailState(s1, s2, s3, s4);
}

class _MailState extends State<Mail> {
  _MailState(this.s1, this.s2, this.s3, this.s4);

  final String s1;
  final String s2;
  final String s3;
  final String s4;

  mail() async {
    //print(s1);
    //print(s2);
    //print(s3);
    //print(s4);
    await widget.api.createMail(s1, s4, s2, "false", "15:30", s3);
    /*String username = '';
    String password = '';

    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'Aniket Tiwari')
      ..recipients.add('$s2')
      //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      //..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = '$s3'
      ..text = '$s4'
      ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
    // DONE*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: mail, icon: Icon(Icons.mail), label: Text("Continue")),
      ),
    );
  }
}
