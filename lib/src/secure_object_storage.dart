import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:storage_helper_services/src/objectStorage.dart';

///
/// Object storage built on [FlutterSecureStorage]
///
class SecureObjectStorage extends ObjectStorage<String> {
  final FlutterSecureStorage storage;

  SecureObjectStorage(this.storage);

  ///
  /// Check if the store contains a key
  ///
  @override
  FutureOr<bool> contains(String key) async {
    return (await storage.containsKey(key: key));
  }

  ///
  /// Delete an object from the store using a key
  ///
  @override
  FutureOr delete(String key) async {
    await storage.delete(key: key);
  }

  ///
  /// Get an object from the store
  ///
  @override
  FutureOr<String?> get(String key) async {
    return await storage.read(key: key);
  }

  ///
  /// Get a double value from the store
  ///
  @override
  FutureOr<double> getDouble(String key) async {
    String value = (await storage.read(key: key)) ?? "";
    return double.parse(value);
  }

  ///
  /// Get an integer value from the store
  ///
  @override
  FutureOr<int> getInt(String key) async {
    String value = (await storage.read(key: key)) ?? "";
    return int.parse(value);
  }

  ///
  /// Get a string
  ///
  @override
  FutureOr<String?> getString(String key) async {
    return await storage.read(key: key);
  }

  @override
  FutureOr load() {
    throw UnimplementedError();
  }

  ///
  /// Store a value
  ///
  @override
  FutureOr store(String key, value) async {
    return await storage.write(key: key, value: value.toString());
  }

  ///
  /// Store a double value
  ///
  @override
  FutureOr storeDouble(String key, double value) async {
    return await storage.write(key: key, value: value.toString());
  }

  ///
  /// Store integer
  ///
  @override
  FutureOr storeInt(String key, int value) async {
    return await storage.write(key: key, value: value.toString());
  }

  ///
  /// Store string
  ///
  @override
  FutureOr storeString(String key, String value) async {
    return await storage.write(key: key, value: value);
  }
}
