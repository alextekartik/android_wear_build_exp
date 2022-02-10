import 'package:dev_test/package.dart';

Future<void> main() async {
  // Unit test will build and compile the wear app
  await packageRunCi('.');
}
