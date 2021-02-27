import 'package:dartz/dartz.dart';
import 'package:dynamic_link_poc/app/shared/navigator_observer/navigator_history_observer.dart';
import 'package:dynamic_link_poc/app/shared/service/dynamic_link_service/dynamic_link_service.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class FirebaseDynamicLinksMock extends Mock implements FirebaseDynamicLinks {}

class PendingDynamicLinkMock extends Mock implements PendingDynamicLinkData {}

class NavigatorHistoryObserverMock extends Mock
    implements NavigatorHistoryObserver {}

main() {
  FirebaseDynamicLinksMock firebaseDynamicLinksMock;
  NavigatorHistoryObserverMock navigatorHistoryObserverMock;
  DynamicLinkService dynamicLinkService;
  PendingDynamicLinkMock pendingDynamicLinkMock;
  setUp(() {
    pendingDynamicLinkMock = PendingDynamicLinkMock();
    firebaseDynamicLinksMock = FirebaseDynamicLinksMock();
    navigatorHistoryObserverMock = NavigatorHistoryObserverMock();
    dynamicLinkService = DynamicLinkService(
      firebaseDynamicLinks: firebaseDynamicLinksMock,
      navigatorHistoryObserver: navigatorHistoryObserverMock,
    );
  });

  group(
    'initOnOpenAppDynamicLinks',
    () {
      Uri uri;
      String redirectInApp = 'redirect-cart';
      setUp(() {
        uri = Uri.parse(
          'https://flutterdynamiclinkpoc.page.link/cart?redirectInApp=$redirectInApp',
        );
      });

      test(
        'some() must be returned with a callback when there is a'
        ' match with a redirect in the available strategies',
        () async {
          when(firebaseDynamicLinksMock.getInitialLink())
              .thenAnswer((_) async => pendingDynamicLinkMock);
          when(pendingDynamicLinkMock.link).thenReturn(uri);
          final result = await dynamicLinkService.initOnOpenAppDynamicLinks();
          verifyInOrder([
            firebaseDynamicLinksMock.getInitialLink(),
            pendingDynamicLinkMock.link,
          ]);
          expect(result, isA<Some<VoidCallback>>());
        },
      );
      group(
        'none() must be returned when ',
        () {
          test(
            'firebaseDynamicLinks.getInitialLink() is null',
            () async {
              when(firebaseDynamicLinksMock.getInitialLink())
                  .thenAnswer((_) async => null);
              final result =
                  await dynamicLinkService.initOnOpenAppDynamicLinks();
              verify(firebaseDynamicLinksMock.getInitialLink()).called(1);
              verifyNever(pendingDynamicLinkMock.link);
              expect(result, isA<None<VoidCallback>>());
            },
          );

          test(
            'pendingDynamicLinkData.link is null',
            () async {
              when(firebaseDynamicLinksMock.getInitialLink())
                  .thenAnswer((_) async => pendingDynamicLinkMock);
              when(pendingDynamicLinkMock.link).thenReturn(null);
              final result =
                  await dynamicLinkService.initOnOpenAppDynamicLinks();
              verifyInOrder([
                firebaseDynamicLinksMock.getInitialLink(),
                pendingDynamicLinkMock.link,
              ]);
              expect(result, isA<None<VoidCallback>>());
            },
          );

          test(
            'redirectInApp is null',
            () async {
              when(firebaseDynamicLinksMock.getInitialLink())
                  .thenAnswer((_) async => pendingDynamicLinkMock);
              when(pendingDynamicLinkMock.link).thenReturn(Uri.parse(''));
              final result =
                  await dynamicLinkService.initOnOpenAppDynamicLinks();
              verifyInOrder([
                firebaseDynamicLinksMock.getInitialLink(),
                pendingDynamicLinkMock.link,
              ]);
              expect(result, isA<None<VoidCallback>>());
            },
          );
        },
      );
    },
  );
}
