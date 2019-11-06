TDLib for Dart (WIP)
===

A port of the Telegram Database Library (TDLib) for Dart.

#### Update (November 1, 2019)
The Dart team made a bunch of breaking changes to `dart:ffi` since I first made this so
I've had to up the minimum required Dart SDK version from 2.6.0 to 2.6.0-dev.8.2.
I've also had to upgrade the [`package:ffi`](https://pub.dev/packages/ffi) version to 0.1.4 (which isn't on pub so I had
to pull it straight from the git repo). Please upgrade your Dart SDK version accordingly!
(You'll have to be on the dev channel.) Once `dart:ffi` becomes a stable feature,
hopefully this won't be a problem :)

## Motivation

Last year I wanted to make a Telegram client for Flutter, but at the time Dart didn't have
an FFI and my only option was to use the JNI classes and use a method channel to query the
Telegram servers, which would have been a huge pain in the ass. But on September 10th, 2019
the Dart team announced an FFI for Dart so I can finally make my Telegram app. Though I'll
need to set up the interface with a library.

## How To Use It

### 1: Building TDLib

You'll need to download and build TDLib yourself. You can figure out how to do that 
[here](https://tdlib.github.io/td/build.html?language=Other) (just select your OS, 
don't change the language option). It doesn't especially matter where you build it, as
the `JsonClient.create()` constructor requires a path to the root directory of TDLib.

### 2: Including This Project

As it's incomplete and requires a lot of setup, I'm not putting this on pub just yet.
Instead, clone the repository and copy the `lib` directory into your own project folder
for now. You could also try specifying this repository in pubspec.yaml, but I don't know 
if that'll work :p.

### 3: Generating Reflectors

This library has a small reliance on reflection, which isn't allowed in Flutter
because Flutter does "tree shaking" to eliminate unused classes, which wouldn't work
if there is code that's dynamically parsed and run from strings, as it wouldn't be able
to safely eliminate anything. So it makes use of [reflectable](https://pub.dev/packages/reflectable), which generates
static code ahead of time to work like dart:mirrors. But you will have to generate the reflectables
yourself. To do this, you can use [build runner](https://pub.dev/packages/build_runner), and in the root directory of this 
project, run `pub run build_runner build`. It should Just Work&trade;.

### 4: Now You're Ready to Rock and Roll

The general structure of a program using this library is something like this:

```dart
import "package:tdlib/tdlib.dart";
import "main.reflectable.dart";

main() {
  initializeReflectable();
  
  // Create a client
  final client = JsonClient.create("path/to/td");
  
  try {
    while (true) {
      // Fetch a request
      Map event = client.receive();
      if (event.isNotEmpty) {
        // Handle the request...
      }
    }
  } finally {
    // Be sure to destroy the client
    client.destroy();
  }
}
```
