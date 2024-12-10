import 'package:padrao_observer/contracts/observable_state_interface.dart';

class StateController implements ObservableStateInterface {
  final List<void Function()> _callbacks = [];

  @override
  void addListener(void Function() callback) {
    if (!_callbacks.contains(callback)) {
      _callbacks.add(callback);
    }
  }

  @override
  void removeListener(void Function() callback) {
    _callbacks.remove(callback);
  }

  void dispose() {
    _callbacks.clear();
  }

  void notifyCallbacks() {
    final int len = _callbacks.length;
    if (len == 0) return;
    for (var i = 0; i < len; i++) {
      _callbacks[i]();
    }
  }
}
