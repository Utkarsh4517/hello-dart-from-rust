# Hello Dart From Rust
## #Blazingly Fasssstt

This dart-rust template demonstrates how to create a simple Dart CLI tool that calls a Rust library using Dart FFI (Foreign Function Interface). The Rust library provides a function that returns a greeting message, which the Dart CLI tool then prints to the console.

By integrating Dart with Rust through FFI, you gain access to Rust's performance, safety, and system-level capabilities while leveraging Dart’s productivity and ease of use. This combination can enhance your projects' performance, reliability, and cross-platform capabilities.

This template can open up numerous number of opportunities for a dart dev by leveraging Rust's Performance. 

## Requirements
- Dart SDK
- Rust

## Setup
- The rust binary `librust_ffi.dylib` present inside `rust_ffi/target/debug/` was built on macOs, hence the extension of the file is `.dylib` 
- If you are on linux or windows you will need to rebuld the binary, using `cargo build` inside `rust_ffi`
- Check the extension of the binary generated for your OS, and configure it in the `main.dart` accordingly.
    - MacOS - `.dylib`
    - Linux - `.so` (Shared Object)
    - Windows - `.dll` (dynamic link library)

## Usage
- Run `dart pub get` from `dart_tool` dir.
- `cd dart_tool`
- `dart run bin/main.dart`