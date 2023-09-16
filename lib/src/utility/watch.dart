void watch(
  String title,
  void Function() test,
) {
  final Stopwatch stopwatch = Stopwatch();
  print("Start: $title");
  stopwatch.start();
  test();
  stopwatch.stop();
  print("Stop: $title \n ${stopwatch.elapsedMicroseconds}");
}
