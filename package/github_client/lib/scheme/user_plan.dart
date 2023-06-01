// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class UserPlan extends JsonScheme {
  UserPlan(super.rawData);

  static Map get defaultData {
    return {
      "@type": "userPlan",
      "name": "free",
      "space": 976562499,
      "private_repos": 10000,
      "collaborators": 0
    };
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

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get space {
    try {
      if (rawData["space"] is int == false) {
        return null;
      }
      return rawData["space"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get private_repos {
    try {
      if (rawData["private_repos"] is int == false) {
        return null;
      }
      return rawData["private_repos"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get collaborators {
    try {
      if (rawData["collaborators"] is int == false) {
        return null;
      }
      return rawData["collaborators"] as int;
    } catch (e) {
      return null;
    }
  }

  static UserPlan create({
    String special_type = "userPlan",
    String? name,
    int? space,
    int? private_repos,
    int? collaborators,
  }) {
    // UserPlan userPlan = UserPlan({

    UserPlan userPlan_data_create = UserPlan({
      "@type": special_type,
      "name": name,
      "space": space,
      "private_repos": private_repos,
      "collaborators": collaborators,
    });

// return userPlan;
    return userPlan_data_create;
  }
}
