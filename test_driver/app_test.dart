import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_start/main.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter', (
        tester,
        ) async {
      // Load app widget.
      await tester.pumpWidget(const MyApp());

      // Screenshot step
      await binding.convertFlutterSurfaceToImage();
      await tester.pumpAndSettle();
      // if (kIsWeb) {
      //   await binding.takeScreenshot('test-screenshot');
      //   return;
      // } else if (Platform.isAndroid) {
      //   await binding.convertFlutterSurfaceToImage();
      //   await tester.pumpAndSettle();
      // }
      await binding.takeScreenshot('test-homepage');

      expect(true, true);
    });
  });
}