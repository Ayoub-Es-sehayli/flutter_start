import 'dart:io';

import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  await integrationDriver(
    onScreenshot: (String fileName, List<int> image, [Map<String, Object?>? args]) async {
      final file = await File('screenshots/$fileName.png').create(recursive: true);
      file.writeAsBytesSync(image);
      return true;
    }
  );
}