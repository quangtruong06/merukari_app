import 'package:intl/intl.dart';

int yourMoney = 1000;
int yourPoint = 200;
int yourPrepay = 128372;
int yourPrepayLimit =150000;
double prepayProgressPercent = yourPrepay/yourPrepayLimit;
NumberFormat myFormat = NumberFormat.decimalPattern('en_us');