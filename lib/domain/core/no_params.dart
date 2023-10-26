class NoParams {
  const NoParams();

  @override
  String toString() {
    return 'NoParam()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoParams);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}
