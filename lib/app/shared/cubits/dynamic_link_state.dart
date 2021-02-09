part of 'dynamic_link_cubit.dart';

@freezed
abstract class DynamicLinkState with _$DynamicLinkState {
  const factory DynamicLinkState.started() = DynamicLinkStateStarted;
  const factory DynamicLinkState.loadInProgress() =
      DynamicLinkStateLoadInProgress;
  const factory DynamicLinkState.loadSuccess() = DynamicLinkStateLoadSuccess;
  const factory DynamicLinkState.loadFailure() = DynamicLinkStateLoadFailure;
}
