part of 'dynamic_link_cubit.dart';

@freezed
abstract class DynamicLinkState with _$DynamicLinkState {
  const factory DynamicLinkState.started() = DynamicLinkStateStarted;
  const factory DynamicLinkState.loadInProgress() =
      DynamicLinkStateLoadInProgress;
  const factory DynamicLinkState.redirect(VoidCallback redirectCallback) =
      DynamicLinkStateLoadRedirect;
  const factory DynamicLinkState.notRedirect() = DynamicLinkStateNotRedirect;
}
