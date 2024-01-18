import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:taxi_customer_demo/core/services/storage_service/storage_keys.dart';

import 'local_data_source.dart';

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl extends LocalDataSource {
  @override
  void clearData() {
    final GetStorage box = GetStorage();
    box.erase();
  }

  @override
  Future clearSpecificKey(String key) async {
    final GetStorage box = GetStorage();
    return box.remove(key);
  }

  @override
  Future getData(String key) async {
    final GetStorage box = GetStorage();
    return box.read(key);
  }

  @override
  Future setData(String key, value) async {
    final GetStorage box = GetStorage();
    return box.write(key, value);
  }

  @override
  Future clearLoginData() async {
    final GetStorage box = GetStorage();

    box.remove(StorageKeys.keyToken);
    box.remove(StorageKeys.keyLoggedIn);
  }
}

/*
class LocalDataSourceImpl extends LocalDataSource {
  @override
  Future setData(String key, value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if (value is String) {
      return pref.setString(key, value);
    } else if (value is int) {
      return pref.setInt(key, value);
    } else if (value is double) {
      return pref.setDouble(key, value);
    } else if (value is bool) {
      return pref.setBool(key, value);
    } else {
      return pref.setString(key, value);
    }
  }

  @override
  Future getData(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.get(key);
  }

  @override
  Future clearSpecificKey(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove(key);
  }

  @override
  void clearData() {
    SharedPreferences.getInstance().then((value) {
      value.clear();
    });
  }
}*/
