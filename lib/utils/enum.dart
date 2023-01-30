enum LoadingStatus { None, Initialized, InProgress, Done, Error }

enum ClientFailure { invalidCredentials, error }

enum NavigateTo{
  demo1,
  demo2,
}

extension GetKeyList on Map<String, dynamic> {
  List<String> get keyList {
    List<String> data = [];
    forEach((key, value) {
      data.add(key);
    });
    return data;
  }
}

extension GetValueList on Map<String, dynamic> {
  List<String?> get valuesList {
    List<String?> data = [];
    forEach((key, value) {
      data.add(value);
    });
    return data;
  }
}

extension GetMapList on List<Map<String, dynamic>> {
  List<Map<String, dynamic>> get mapValueList {
    List<Map<String, dynamic>> data = [];
    forEach((element) {
      data.add(element);
    });
    return data;
  }
}

extension GetMap on Map<String, dynamic> {
  Map<String, dynamic> get getMap {
    Map<String, dynamic> data = {};
    forEach((key, value) {
      data = value;
    });
    return data;
  }
}
