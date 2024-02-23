void main() {
  Stream<int> numerosStream =
      Stream<int>.periodic(Duration(seconds: 2), (index) {
    return index;
  }).take(10);

  numerosStream.where((event) => event % 2 == 0).listen((event) {
    print(event);
  });
}
