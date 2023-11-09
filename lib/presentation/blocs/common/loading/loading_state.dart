part of 'loading_bloc.dart';

@freezed
class LoadingState with _$LoadingState {
  const LoadingState._();

  const factory LoadingState.running([String? message]) = _LoadingRunning;
  const factory LoadingState.stopped() = _LoadingStopped;

  bool get isLoading => when(running: (_) => true, stopped: () => false);
}
