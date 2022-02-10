import 'package:build_support/wear_app.dart';
import 'package:test/test.dart';

var buildTimeout = Timeout(Duration(minutes: 10));
void main() {
  test('buildWearApp', () async {
    await buildWearApp();
  }, timeout: buildTimeout);
  test('testWearApp', () async {
    await testWearApp();
  }, timeout: buildTimeout);
}
