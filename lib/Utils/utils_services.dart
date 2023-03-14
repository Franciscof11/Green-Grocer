import 'package:intl/intl.dart';

class UtilsServices {
  String priceFormatter(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_br');
    return numberFormat.format(price);
  }
}
