import 'package:flutter/widgets.dart';
import 'package:you_move_me/data/http_client/dio_client.dart';
export 'package:you_move_me/data/config.dart';

abstract class BaseNotifier extends ChangeNotifier {
  final DioClient dioClient = DioClient();
}
