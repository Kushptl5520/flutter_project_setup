import 'package:get_storage/get_storage.dart';

class MyStorage{
  final box = GetStorage();

  void saveData(String key, dynamic value) {
    box.write(key, value);
  }

  dynamic loadData(String key) {
    return box.read(key);
  }

  void deleteData(String key) {
    box.remove(key);
  }

  bool hasKeyExist(String key) {
    return box.hasData(key);
  }

}