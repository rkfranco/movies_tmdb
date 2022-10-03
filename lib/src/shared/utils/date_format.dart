import 'package:intl/intl.dart';

String dateFormat(String date) {
  DateTime? datetime = DateTime.tryParse(date);

  if (datetime == null) return 'Data desconhecida';
  return DateFormat("yMMMd", "pt_BR").format(DateTime.parse(date));
}
