import 'package:dio/dio.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:you_move_me/Models/library_model.dart';
import 'package:you_move_me/data/providers/auth_provider.dart';
import 'package:you_move_me/data/providers/base_notifer.dart';
import 'package:you_move_me/data/providers/providers.dart';

class LibraryNotifier extends BaseNotifier {
  late AuthNotifier authNotifier;
  LibraryNotifier(ProviderReference _ref) {
    authNotifier = _ref.read(authProvider);
    loadLibrayData();
  }
  List<LibraryModel> libraries = [];
  loadLibrayData() {
    final response = dioClient.postWithFormData(apiEnd: libraryDataEnd, data: {
      "team_id": authNotifier.userData?.teamId,
      'client_id': authNotifier.userData?.id,
    });
    if (response is Response) {
      libraries =
          (((response as Response).data['profile_schedules'] ?? []) as List)
              .map((e) => LibraryModel.fromJson(e))
              .toList();
    }
  }
}
