import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class ObjectStorage<KeyType> {
  FutureOr<bool> contains(KeyType key);
  FutureOr get(KeyType key);
  FutureOr getDouble(KeyType key);
  FutureOr getString(KeyType key);
  FutureOr getInt(KeyType key);
  FutureOr store(KeyType key, value);
  FutureOr storeDouble(KeyType key, double value);
  FutureOr storeString(KeyType key, String value);
  FutureOr storeInt(KeyType key, int value);
  FutureOr delete(KeyType key);
  FutureOr load();
}
