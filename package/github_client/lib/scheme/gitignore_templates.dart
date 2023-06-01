// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class GitignoreTemplates extends JsonScheme {
  GitignoreTemplates(super.rawData);

  static Map get defaultData {
    return {
      "@type": "gitignoreTemplates",
      "total_count": 0,
      "git_ignore_templates": ["Dart"]
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

  int? get total_count {
    try {
      if (rawData["total_count"] is int == false) {
        return null;
      }
      return rawData["total_count"] as int;
    } catch (e) {
      return null;
    }
  }

  List<String> get git_ignore_templates {
    try {
      if (rawData["git_ignore_templates"] is List == false) {
        return [];
      }
      return (rawData["git_ignore_templates"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  static GitignoreTemplates create({
    String special_type = "gitignoreTemplates",
    int? total_count,
    List<String>? git_ignore_templates,
  }) {
    // GitignoreTemplates gitignoreTemplates = GitignoreTemplates({

    GitignoreTemplates gitignoreTemplates_data_create = GitignoreTemplates({
      "@type": special_type,
      "total_count": total_count,
      "git_ignore_templates": git_ignore_templates,
    });

// return gitignoreTemplates;
    return gitignoreTemplates_data_create;
  }
}
