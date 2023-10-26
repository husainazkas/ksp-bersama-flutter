part of 'loading_bloc.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.running([String? message]) = _LoadingRunning;
  const factory LoadingState.stopped() = _LoadingStopped;
}
