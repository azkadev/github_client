// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class WisdomData extends JsonScheme {
  WisdomData(super.rawData);

  static Map get defaultData {
    return {"@type": "wisdomData", "data": ""};
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

  static WisdomData create({
    String special_type = "wisdomData",
    String? data,
  }) {
    // WisdomData wisdomData = WisdomData({

    WisdomData wisdomData_data_create = WisdomData({
      "@type": special_type,
      "data": data,
    });

// return wisdomData;
    return wisdomData_data_create;
  }
}
