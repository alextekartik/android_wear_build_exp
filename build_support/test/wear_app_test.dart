import 'package:build_support/wear_app.dart';
import 'package:test/test.dart';
import 'package:tekartik_android_utils/build_utils.dart';

var buildTimeout = Timeout(Duration(minutes: 10));
Future<void> main() async {
  await initAndroidBuildEnvironment();
  test('buildWearApp', () async {
    await buildWearApp();
  }, timeout: buildTimeout);
  test('testWearApp', () async {
    await testWearApp();
  }, timeout: buildTimeout);
}
