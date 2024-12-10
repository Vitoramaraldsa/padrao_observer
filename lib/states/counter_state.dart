import 'package:padrao_observer/controllers/state_controller.dart';

class CounterState extends StateController {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyCallbacks();
  }
}
