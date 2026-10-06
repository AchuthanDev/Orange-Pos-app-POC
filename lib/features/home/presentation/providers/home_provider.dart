import 'package:flutter_riverpod/flutter_riverpod.dart';

final photoClickedProvider =
    NotifierProvider<PhotoClickedNotifier, bool>(
  PhotoClickedNotifier.new,
);

class PhotoClickedNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void photoClicked() {
    state = true;
  }
}