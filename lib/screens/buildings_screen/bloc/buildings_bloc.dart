import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'buildings_event.dart';
part 'buildings_state.dart';

class BuildingsBloc extends Bloc<BuildingsEvent, BuildingsState> {
  BuildingsBloc() : super(BuildingsInitial()) {
    on<BuildingsStarted>(_onBuildingsStarted);

    add(BuildingsStarted());
  }

  Future<void> _onBuildingsStarted(BuildingsStarted event, Emitter<BuildingsState> emit) async {
    emit(BuildingsLoading());
  }
}
