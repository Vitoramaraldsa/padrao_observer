abstract class ObservableStateInterface {
  void addListener(void Function() callback);
  void removeListener(void Function() callback);
}
