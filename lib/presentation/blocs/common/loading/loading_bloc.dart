import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_event.dart';
part 'loading_state.dart';
part 'loading_bloc.freezed.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc() : super(const LoadingState.stopped()) {
    on<LoadingEvent>(_onLoadingEvent);
  }

  void _onLoadingEvent(LoadingEvent event, Emitter<LoadingState> emit) {
    emit(event.when(
      started: LoadingState.running,
      stopped: LoadingState.stopped,
    ));
  }
}
