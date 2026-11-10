# build_support

Builds and tests the Wear OS app of [`../wearos`](../wearos) from Dart, with
process_run: `buildWearApp()` runs `./gradlew assembleRelease`,
`testWearApp()` runs `./gradlew test` (`lib/wear_app.dart`).

```shell
dart pub get
dart test        # builds then tests the wear app (10 minutes timeout each)
```

The test calls `initAndroidBuildEnvironment()` of `tekartik_android_utils`,
which puts the Android SDK tools and Android Studio's JDK first on the PATH.
The wear project is on Gradle 7.2 / AGP 7.1.1, run on JDK 17 by the CI;
Gradle 7.2 does not run on JDK 21 or later (a current Android Studio `jbr`):
set `JAVA_HOME` to a JDK 17.

Linux and macOS only (`./gradlew`). If the project was created on Windows,
make the wrapper executable:

```shell
git update-index --chmod +x gradlew
chmod +x gradlew
```
