typedef FetchResultFunc<SearchOption, Result> = Future<List<Result>?>
Function(SearchOption option, {required int limit, required int offset});

class ResultCursor<SearchOption, Result> {
  int _limit;
  int _offset;
  final SearchOption _option;
  final FetchResultFunc<SearchOption, Result> _fetchResultFunc;

  ResultCursor({
    required limit,
    required offset,
    required option,
    required fetchResultFunc,
  })   : _limit = limit,
        _offset = offset,
        _option = option,
        _fetchResultFunc = fetchResultFunc;

  ResultCursor limit(int limit) {
    _limit = limit;
    return this;
  }

  Stream<List<Result>> nextPage() async* {
    final results = await _fetchResultFunc(_option, limit: _limit, offset: _offset);
    if (results == null) return;
    yield results;
    _offset += _limit;
  }
}