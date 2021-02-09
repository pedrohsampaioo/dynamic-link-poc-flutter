import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../service/dynamic_link_service/chain_of_responsability/redirect_cart_dynamic_link.dart';
import '../service/dynamic_link_service/chain_of_responsability/redirect_home_dynamic_link.dart';
import '../service/dynamic_link_service/dynamic_link_service.dart';

part 'dynamic_link_cubit.freezed.dart';
part 'dynamic_link_state.dart';

class DynamicLinkCubit extends Cubit<DynamicLinkState> {
  final DynamicLinkService _dynamicLinkService;

  DynamicLinkCubit({
    @required DynamicLinkService dynamicLinkService,
  })  : assert(dynamicLinkService != null),
        _dynamicLinkService = dynamicLinkService,
        super(DynamicLinkState.started());

  Future<void> init() async {
    emit(DynamicLinkState.loadInProgress());
    final firstRule = RedirectHomeDynamicLink();
    firstRule.addNext(RedirectCardDynamicLink());
    await _dynamicLinkService.initDynamicLinks(firstRule.handler);
    emit(DynamicLinkState.loadSuccess());
  }
}
