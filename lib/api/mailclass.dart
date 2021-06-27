class MailClass {
  final String emailId;
  final String mailBody;
  final String sentTo;
  final String starred;
  final String time;
  final String mailSub;

  const MailClass._(this.emailId, this.mailBody, this.sentTo, this.starred,
      this.time, this.mailSub);

  factory MailClass.fromJson(Map json) {
    return MailClass._(json['emailId'], json['mailBody'], json['sentTo'],
        json['starred'], json['time'], json['mailSub']);
  }
}
