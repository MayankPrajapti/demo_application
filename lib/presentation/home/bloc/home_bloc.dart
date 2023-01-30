import 'package:demo_application/models/lead_data_model.dart';
import 'package:demo_application/service/service.dart';
import 'package:demo_application/utils/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IRestClientService _restClientService;

  HomeBloc(
    this._restClientService,
  ) : super(const HomeState.empty(LoadingStatus.Initialized, null)) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        getLeadData: () async {
          emit(const HomeState.loading());
          final resp = await _restClientService.getLeadData();
          resp.fold((l) => emit(HomeState.empty(LoadingStatus.Error, l)),
              (r) => emit(HomeState.loaded(LoadingStatus.Done, r)));
        },
      );
    });
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeLoadingState;
  const factory HomeState.empty(LoadingStatus loadingStatus, ClientFailure? failure) = _HomeEmptyState;
  const factory HomeState.loaded(LoadingStatus loadingStatus, LeadDataModel leadData) = _HomeLoadedState;
}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getLeadData() = _GetLeadData;
}
