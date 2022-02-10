import 'package:path/path.dart';
import 'package:process_run/shell.dart';

Future<void> main(List<String> arguments) async {
  await buildWearApp();
}

Shell wearAppShell({String? path}) {
  path ??= join('..', 'wearos');
  return Shell(
          environment: ShellEnvironment()
            ..aliases['gradle'] = join('.', 'gradlew'))
      .cd(path);
}

// Build
Future<void> buildWearApp({String? path}) async {
  var shell = wearAppShell(path: path);
  await shell.run('gradle assembleRelease');
}

Future<void> testWearApp({String? path}) async {
  var shell = wearAppShell(path: path);
  await shell.run('gradle test');
}
