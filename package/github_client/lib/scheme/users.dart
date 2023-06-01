// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "user.dart";

class Users extends JsonScheme {
  Users(super.rawData);

  static Map get defaultData {
    return {
      "@type": "users",
      "total_count": 0,
      "users": [
        {
          "@type": "user",
          "id": 82513502,
          "name": "Azka Full Snack Developer:)",
          "username": "azkadev",
          "company": "@HexaMinate , @ENVIVORE , @GALAXEUS  and Freelance",
          "bio":
              "Azka FullStack(Overflow) Developer:V\r\ntertarik pada artifical inteligence, automation, ",
          "type": "user",
          "followers_count": 109,
          "following_count": 16,
          "location": "Indonesia",
          "avatar_url": "https://avatars.githubusercontent.com/u/82513502?v=4",
          "html_url": "https://github.com/azkadev",
          "site_admin": false,
          "blog": "",
          "email": null,
          "hirable": null,
          "public_repos": 103,
          "public_gists": 3,
          "create_date": 1618400283000,
          "update_date": 1682352250000,
          "twitter_username": "azka_dev",
          "events_url": "https://api.github.com/users/azkadev/events{/privacy}",
          "followers_url": "https://api.github.com/users/azkadev/followers",
          "following_url":
              "https://api.github.com/users/azkadev/following{/other_user}",
          "gists_url": "https://api.github.com/users/azkadev/gists{/gist_id}",
          "gravatar_id": "",
          "node_id": "MDQ6VXNlcjgyNTEzNTAy",
          "organizations_url": "https://api.github.com/users/azkadev/orgs",
          "received_events_url":
              "https://api.github.com/users/azkadev/received_events",
          "repos_url": "https://api.github.com/users/azkadev/repos",
          "starred_at": null,
          "starred_url":
              "https://api.github.com/users/azkadev/starred{/owner}{/repo}",
          "subscriptions_url":
              "https://api.github.com/users/azkadev/subscriptions",
          "url": "https://api.github.com/users/azkadev",
          "total_private_repos": 38,
          "owned_private_repos": 38,
          "disk_usage": 953270,
          "plan": {
            "@type": "userPlan",
            "name": "free",
            "space": 976562499,
            "private_repos": 10000,
            "collaborators": 0
          }
        }
      ]
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

  List<User> get users {
    try {
      if (rawData["users"] is List == false) {
        return [];
      }
      return (rawData["users"] as List)
          .map((e) => User(e as Map))
          .toList()
          .cast<User>();
    } catch (e) {
      return [];
    }
  }

  static Users create({
    String special_type = "users",
    int? total_count,
    List<User>? users,
  }) {
    // Users users = Users({

    Users users_data_create = Users({
      "@type": special_type,
      "total_count": total_count,
      "users": (users != null) ? users.toJson() : null,
    });

// return users;
    return users_data_create;
  }
}
