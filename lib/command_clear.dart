Future<void> callBackClear() {
  print("\x1B[2J\x1B[0;0H");
  return Future.value();
}
