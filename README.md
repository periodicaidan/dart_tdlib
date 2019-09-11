TDLib for Dart (WIP)
===

A port of the Telegram Database Library (TDLib) for Dart

## Motivation

Last year I wanted to make a Telegram client for Flutter, but at the time Dart didn't have
an FFI and my only option was to use the JNI classes and use a method channel to query the
Telegram servers, which would have been a huge pain in the ass. But on September 10th, 2019
the Dart team announced an FFI for Dart so I can finally make my Telegram app. Though I'll
need to set up the interface with a library.

## How To Use

You'll need to download and build TDLib yourself. You can figure out how to do that 
[here](https://tdlib.github.io/td/build.html?language=Other) (just select your OS, 
don't change the language option). Make sure you are in the `lib` folder when you clone 
the TDLib repository.

The general structure of a program using this library is something like this:

```dart
import "package:tdlib/tdlib.dart";

main() {
  // Create a client
  final client = JsonClient.create();
  
  while (true) {
    // Fetch a request
    Map event = client.receive();
    if (event.isNotEmpty) {
      // Handle the request...
    }
  }
  
  // Finally, be sure to destroy the client
  client.destroy();
}
```

## Todo

So far I've just implemented the `td_json_client.h` functions and wrapped them in a `JsonClient`
class, which has a nice public interface. While this is all that is strictly necessary to get 
TDLib to work, it's not very convenient. The messages are all `Map<String, dynamic>`s so the
programmer has to work with all the responses and requests through map acceses and key checks.
Ideally, I'd like to make basically all the Telegram messages into classes that are easy to
create and work with.