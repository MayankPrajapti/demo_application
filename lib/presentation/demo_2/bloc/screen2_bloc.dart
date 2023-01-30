import 'package:demo_application/models/form_data_model.dart';
import 'package:demo_application/service/service.dart';
import 'package:demo_application/utils/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'screen2_bloc.freezed.dart';

@injectable
class Screen2Bloc extends Bloc<Screen2Event, Screen2State> {
  final IRestClientService _restClientService;

  Screen2Bloc(
      this._restClientService,
      ) : super(const Screen2State.empty(LoadingStatus.Initialized, null)) {
    on<Screen2Event>((event, emit) async {
      await event.when(
        getFormData: () async {
          emit(const Screen2State.loading());
          final resp = await _restClientService.getFormData();
          resp.fold((l) => emit(Screen2State.empty(LoadingStatus.Error, l)),
                  (r) => emit(Screen2State.loaded(LoadingStatus.Done, r)));
        },
      );
    });
  }
}

@freezed
class Screen2State with _$Screen2State {
  const factory Screen2State.loading() = _HomeLoadingState;
  const factory Screen2State.empty(LoadingStatus loadingStatus, ClientFailure? failure) = _HomeEmptyState;
  const factory Screen2State.loaded(LoadingStatus loadingStatus, List<FormDataModel> leadData) = _HomeLoadedState;
}

@freezed
class Screen2Event with _$Screen2Event {
  const factory Screen2Event.getFormData() = _GetFormData;
}
