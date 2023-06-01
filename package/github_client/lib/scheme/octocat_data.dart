// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class OctocatData extends JsonScheme {
  OctocatData(super.rawData);

  static Map get defaultData {
    return {"@type": "octocatData", "data": ""};
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

  static OctocatData create({
    String special_type = "octocatData",
    String? data,
  }) {
    // OctocatData octocatData = OctocatData({

    OctocatData octocatData_data_create = OctocatData({
      "@type": special_type,
      "data": data,
    });

// return octocatData;
    return octocatData_data_create;
  }
}
