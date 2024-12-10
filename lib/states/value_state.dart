import 'package:padrao_observer/contracts/observable_value_interface.dart';
import 'package:padrao_observer/controllers/state_controller.dart';

class ValueState<T> extends StateController
    implements ObservableValueInterface {
      
  T _value;

  @override
  T get value => _value;

  ValueState(this._value);

  set value(T newValue) {
    if (_value == newValue) return;
    _value = newValue;
    notifyCallbacks();
  }
}
