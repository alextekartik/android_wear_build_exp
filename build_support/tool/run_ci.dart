import 'package:dev_build/package.dart';

Future<void> main() async {
  // Unit test will build and compile the wear app
  await packageRunCi('.');
}
