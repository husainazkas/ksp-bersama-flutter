part of 'loading_bloc.dart';

@freezed
class LoadingEvent with _$LoadingEvent {
  const factory LoadingEvent.started([String? message]) = _Started;
  const factory LoadingEvent.stopped() = _Stopped;
}
