// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class RateLimit extends JsonScheme {
  RateLimit(super.rawData);

  static Map get defaultData {
    return {"@type": "rateLimit", "limit": 0, "remaining": 9, "date_reset": 0};
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

  int? get limit {
    try {
      if (rawData["limit"] is int == false) {
        return null;
      }
      return rawData["limit"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get remaining {
    try {
      if (rawData["remaining"] is int == false) {
        return null;
      }
      return rawData["remaining"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get date_reset {
    try {
      if (rawData["date_reset"] is int == false) {
        return null;
      }
      return rawData["date_reset"] as int;
    } catch (e) {
      return null;
    }
  }

  static RateLimit create({
    String special_type = "rateLimit",
    int? limit,
    int? remaining,
    int? date_reset,
  }) {
    // RateLimit rateLimit = RateLimit({

    RateLimit rateLimit_data_create = RateLimit({
      "@type": special_type,
      "limit": limit,
      "remaining": remaining,
      "date_reset": date_reset,
    });

// return rateLimit;
    return rateLimit_data_create;
  }
}
