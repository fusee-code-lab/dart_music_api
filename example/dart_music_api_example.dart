Future<void> main() async {
}


Stream<int> next() async* {
  final list = (await fetchNumbers(limit: 20)) ?? [];
  for (final item in list) {
    yield item;
  }
}


const int max = 30;
Iterable<int> get positiveIntegers sync* {
  for (var i = 0; i < max; i ++) {
    yield i;
  }
}

Future<List<int>?> fetchNumbers({ required int limit }) async {
  await Future.delayed(Duration(seconds: 2));
  return positiveIntegers.take(limit).toList();
}
