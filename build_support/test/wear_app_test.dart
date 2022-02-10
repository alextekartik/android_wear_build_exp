import 'package:build_support/wear_app.dart';
import 'package:test/test.dart';

void main() {
  test('buildWearApp', () async {
    await buildWearApp();
  });
  test('testWearApp', () async {
    await testWearApp();
  });
}
