// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class ZenData extends JsonScheme {
  ZenData(super.rawData);

  static Map get defaultData {
    return {"@type": "zenData", "data": ""};
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      if (rawData["data"] is String == false) {
        return null;
      }
      return rawData["data"] as String;
    } catch (e) {
      return null;
    }
  }

  static ZenData create({
    String special_type = "zenData",
    String? data,
  }) {
    // ZenData zenData = ZenData({

    ZenData zenData_data_create = ZenData({
      "@type": special_type,
      "data": data,
    });

// return zenData;
    return zenData_data_create;
  }
}
