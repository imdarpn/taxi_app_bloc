abstract class LocalDataSource {
  Future<dynamic> setData(String key, dynamic value);

  Future<dynamic> getData(String key);

  void clearData();

  Future<dynamic> clearSpecificKey(String key);

  Future<dynamic> clearLoginData();
}
