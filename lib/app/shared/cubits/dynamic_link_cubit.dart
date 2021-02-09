import 'package:bloc/bloc.dart';
import '../service/dynamic_link_service/chain_of_responsability/redirect_home_dynamic_link.dart';
import '../service/dynamic_link_service/dynamic_link_service.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dynamic_link_state.dart';
part 'dynamic_link_cubit.freezed.dart';

class DynamicLinkCubit extends Cubit<DynamicLinkState> {
  final DynamicLinkService _dynamicLinkService;

  DynamicLinkCubit({
    @required DynamicLinkService dynamicLinkService,
  })  : assert(dynamicLinkService != null),
        _dynamicLinkService = dynamicLinkService,
        super(DynamicLinkState.started());

  Future<void> init() async {
    final rules = RedirectHomeDynamicLink();
    await _dynamicLinkService.initDynamicLinks(rules.handler);
  }
}
