import 'package:intl/intl.dart';

class TFormater {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static NumberFormat formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$');
  }

  static String formatPhoneNumber(String phoneNumber) {

    return phoneNumber;
  }

  static StringBuffer formatInternationalPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formatedNumber = StringBuffer();
    formatedNumber.write('($countryCode) ');

    int i = 0;
    while(i<digitsOnly.length) {
      int groupLength = 2;
      if(i==0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formatedNumber.write(digitsOnly.substring(i, end));

      if(end < digitsOnly.length) {
        formatedNumber.write(' ');
      }
      i = end;
    }
    return formatedNumber;
  }
}