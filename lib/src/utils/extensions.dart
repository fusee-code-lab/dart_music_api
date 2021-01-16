extension Utils<E> on List<E> {
  List<E> get unique {
    return toSet().toList();
  }

  bool get isUnique {
    return toSet().length == length;
  }

  E? get firstOrNull {
    return isNotEmpty ? first : null;
  }
}

extension CompactMap<E> on List<E?> {
  List<E> compactMap(E Function(E e) f) {
    return where((element) => element != null).map((e) => f(e!)).toList();
  }
}

