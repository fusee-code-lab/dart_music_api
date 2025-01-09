import 'package:dart_music_api/src/result_cursor.dart';
import 'package:dio/dio.dart';

abstract class BaseResponsePack<E> {
  final int status;
  final Map<String, dynamic> rawBody;
  final E data;

  BaseResponsePack({
    required this.status,
    required this.rawBody,
    required this.data,
  });

  BaseResponsePack.of({required Response response, required this.data})
      : assert(response.statusCode != null, "Response status code is null."),
        status = response.statusCode!,
        rawBody = response.data as Map<String, dynamic>;
}

class ResponsePack<E> implements BaseResponsePack<E?> {
  @override
  final int status;
  @override
  final Map<String, dynamic> rawBody;
  @override
  final E? data;

  ResponsePack({
    required this.status,
    required this.rawBody,
    required this.data,
  });

  ResponsePack.of({required Response response, required this.data})
      : assert(response.statusCode != null, "Response status code is null."),
        status = response.statusCode!,
        rawBody = response.data as Map<String, dynamic>;
}

class ListResponsePack<E>
    implements
        BaseResponsePack<List<E>>,
        ResultCursorResult<ListResponsePack<E>> {
  @override
  final int status;
  @override
  final Map<String, dynamic> rawBody;
  @override
  final List<E> data;

  ListResponsePack({
    required this.status,
    required this.rawBody,
    required this.data,
  });

  ListResponsePack.of({required Response response, required this.data})
      : assert(response.statusCode != null, "Response status code is null."),
        status = response.statusCode!,
        rawBody = Map<String, dynamic>.from(response.data);

  @override
  ListResponsePack<E> combineWithOther(ListResponsePack<E> other) {
    data.addAll(other.data);
    return this;
  }
}
