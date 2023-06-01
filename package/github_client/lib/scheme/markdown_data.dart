// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class MarkdownData extends JsonScheme {
  MarkdownData(super.rawData);

  static Map get defaultData {
    return {"@type": "markdownData", "data": ""};
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

  static MarkdownData create({
    String special_type = "markdownData",
    String? data,
  }) {
    // MarkdownData markdownData = MarkdownData({

    MarkdownData markdownData_data_create = MarkdownData({
      "@type": special_type,
      "data": data,
    });

// return markdownData;
    return markdownData_data_create;
  }
}
