import 'package:dart_music_api/src/utils.dart';

typedef FetchResultFunc<SearchOption, Result> = Future<List<Result>?>
Function(SearchOption option, {required int limit, required int offset});

class ResultCursor<SearchOption, Result> {
  static const int defaultLimit = 20;

  int _limit;
  int _offset;
  final SearchOption _option;
  late FetchResultFunc<SearchOption, Result> _fetchResultFunc;

  ResultCursor({
    limit = ResultCursor.defaultLimit,
    offset = 0,
    required option,
    required fetchResultFunc,
  })
      : _limit = limit,
        _offset = offset = 0,
        _option = option,
        _fetchResultFunc = fetchResultFunc;

  ResultCursor.wait(List<ResultCursor<SearchOption, Result>> cursors,
      {
        eachLimit = ResultCursor.defaultLimit,
        offset = 0,
        required option,
      })
      : _limit = eachLimit,
        _offset = offset,
        _option = option {
    _fetchResultFunc = (SearchOption option, {required int limit, required int offset}) async {
      final results = cursors.map((e) =>
          e._fetchResultFunc(option, limit: limit, offset: offset));
      final combined = await Future.wait(results);
      return combined
          .compactMap((e) => e)
          .expand((element) {
            return element;
          }).toList();
    };
  }

  ResultCursor limit(int limit) {
    _limit = limit;
    return this;
  }

  Stream<List<Result>> nextPage() async* {
    final results = await _fetchResultFunc(
        _option, limit: _limit, offset: _offset);
    if (results == null) return;
    yield results;
    _offset += _limit;
  }
}