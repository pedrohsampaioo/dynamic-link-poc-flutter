import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../service/dynamic_link_service/dynamic_link_service.dart';

part 'dynamic_link_cubit.freezed.dart';
part 'dynamic_link_state.dart';

class DynamicLinkCubit extends Cubit<DynamicLinkState> implements Disposable {
  final DynamicLinkService _dynamicLinkService;
  DynamicLinkCubit({
    @required DynamicLinkService dynamicLinkService,
  })  : assert(dynamicLinkService != null),
        _dynamicLinkService = dynamicLinkService,
        super(DynamicLinkState.started());

  Future<void> init() async {
    if (state is DynamicLinkStateStarted) {
      _dynamicLinkService.initBackgroundDynamicLinks();
    }
    emit(DynamicLinkState.loadInProgress());
    final noOrRedirect = await _dynamicLinkService.initOnOpenAppDynamicLinks();
    noOrRedirect.fold(
      () => emit(DynamicLinkState.notRedirect()),
      (callback) => emit(DynamicLinkState.redirect(callback)),
    );
  }

  @override
  void dispose() {
    close();
  }
}
