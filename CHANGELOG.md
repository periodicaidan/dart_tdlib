## 0.3.0

Refactored tons of code, deleted a lot of old code. `TelegramClient.setTdLibParams()` is now deprecated in favor of `TelegramClient.defineTdlibParams()`.
All `TdObjects` now accept keyword arguments in the default constructor, instead of `Map<String, dynmaic>`s, which they now only accept through a named `fromJson` constructor. 
A `fromJson` constructor has been added to all the `TdFunction`s as well.

## 0.2.0

Created an even nicer Telegram client that uses streams

## 0.1.2

Used code generation to create all of the classes from the TDLib API documentation.

## 0.1.1

Increased the minimum required Dart SDK version from 2.6.0 to 2.6.0-dev.8.2, as the Dart team
made several breaking changes to `dart:ffi`. Had to increase the `package:ffi` version
accordingly.

## 0.1.0

First version. Creates a `JsonClient` and provides functions for interacting with the Telegram API
directly.
