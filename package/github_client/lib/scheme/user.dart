// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "user_plan.dart";

class User extends JsonScheme {
  User(super.rawData);

  static Map get defaultData {
    return {
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
      "subscriptions_url": "https://api.github.com/users/azkadev/subscriptions",
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

  int? get id {
    try {
      if (rawData["id"] is int == false) {
        return null;
      }
      return rawData["id"] as int;
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

  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get company {
    try {
      if (rawData["company"] is String == false) {
        return null;
      }
      return rawData["company"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bio {
    try {
      if (rawData["bio"] is String == false) {
        return null;
      }
      return rawData["bio"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get followers_count {
    try {
      if (rawData["followers_count"] is int == false) {
        return null;
      }
      return rawData["followers_count"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get following_count {
    try {
      if (rawData["following_count"] is int == false) {
        return null;
      }
      return rawData["following_count"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get location {
    try {
      if (rawData["location"] is String == false) {
        return null;
      }
      return rawData["location"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get avatar_url {
    try {
      if (rawData["avatar_url"] is String == false) {
        return null;
      }
      return rawData["avatar_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get html_url {
    try {
      if (rawData["html_url"] is String == false) {
        return null;
      }
      return rawData["html_url"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get site_admin {
    try {
      if (rawData["site_admin"] is bool == false) {
        return null;
      }
      return rawData["site_admin"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get blog {
    try {
      if (rawData["blog"] is String == false) {
        return null;
      }
      return rawData["blog"] as String;
    } catch (e) {
      return null;
    }
  }

  Object? get email {
    try {
      if (rawData["email"] is Object == false) {
        return null;
      }
      return rawData["email"] as Object;
    } catch (e) {
      return null;
    }
  }

  Object? get hirable {
    try {
      if (rawData["hirable"] is Object == false) {
        return null;
      }
      return rawData["hirable"] as Object;
    } catch (e) {
      return null;
    }
  }

  int? get public_repos {
    try {
      if (rawData["public_repos"] is int == false) {
        return null;
      }
      return rawData["public_repos"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get public_gists {
    try {
      if (rawData["public_gists"] is int == false) {
        return null;
      }
      return rawData["public_gists"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get create_date {
    try {
      if (rawData["create_date"] is int == false) {
        return null;
      }
      return rawData["create_date"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get update_date {
    try {
      if (rawData["update_date"] is int == false) {
        return null;
      }
      return rawData["update_date"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get twitter_username {
    try {
      if (rawData["twitter_username"] is String == false) {
        return null;
      }
      return rawData["twitter_username"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get events_url {
    try {
      if (rawData["events_url"] is String == false) {
        return null;
      }
      return rawData["events_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get followers_url {
    try {
      if (rawData["followers_url"] is String == false) {
        return null;
      }
      return rawData["followers_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get following_url {
    try {
      if (rawData["following_url"] is String == false) {
        return null;
      }
      return rawData["following_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gists_url {
    try {
      if (rawData["gists_url"] is String == false) {
        return null;
      }
      return rawData["gists_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gravatar_id {
    try {
      if (rawData["gravatar_id"] is String == false) {
        return null;
      }
      return rawData["gravatar_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get node_id {
    try {
      if (rawData["node_id"] is String == false) {
        return null;
      }
      return rawData["node_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get organizations_url {
    try {
      if (rawData["organizations_url"] is String == false) {
        return null;
      }
      return rawData["organizations_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get received_events_url {
    try {
      if (rawData["received_events_url"] is String == false) {
        return null;
      }
      return rawData["received_events_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get repos_url {
    try {
      if (rawData["repos_url"] is String == false) {
        return null;
      }
      return rawData["repos_url"] as String;
    } catch (e) {
      return null;
    }
  }

  Object? get starred_at {
    try {
      if (rawData["starred_at"] is Object == false) {
        return null;
      }
      return rawData["starred_at"] as Object;
    } catch (e) {
      return null;
    }
  }

  String? get starred_url {
    try {
      if (rawData["starred_url"] is String == false) {
        return null;
      }
      return rawData["starred_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get subscriptions_url {
    try {
      if (rawData["subscriptions_url"] is String == false) {
        return null;
      }
      return rawData["subscriptions_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get total_private_repos {
    try {
      if (rawData["total_private_repos"] is int == false) {
        return null;
      }
      return rawData["total_private_repos"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get owned_private_repos {
    try {
      if (rawData["owned_private_repos"] is int == false) {
        return null;
      }
      return rawData["owned_private_repos"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get disk_usage {
    try {
      if (rawData["disk_usage"] is int == false) {
        return null;
      }
      return rawData["disk_usage"] as int;
    } catch (e) {
      return null;
    }
  }

  UserPlan get plan {
    try {
      if (rawData["plan"] is Map == false) {
        return UserPlan({});
      }
      return UserPlan(rawData["plan"] as Map);
    } catch (e) {
      return UserPlan({});
    }
  }

  static User create({
    String special_type = "user",
    int? id,
    String? name,
    String? username,
    String? company,
    String? bio,
    String? type,
    int? followers_count,
    int? following_count,
    String? location,
    String? avatar_url,
    String? html_url,
    bool? site_admin,
    String? blog,
    Object? email,
    Object? hirable,
    int? public_repos,
    int? public_gists,
    int? create_date,
    int? update_date,
    String? twitter_username,
    String? events_url,
    String? followers_url,
    String? following_url,
    String? gists_url,
    String? gravatar_id,
    String? node_id,
    String? organizations_url,
    String? received_events_url,
    String? repos_url,
    Object? starred_at,
    String? starred_url,
    String? subscriptions_url,
    String? url,
    int? total_private_repos,
    int? owned_private_repos,
    int? disk_usage,
    UserPlan? plan,
  }) {
    // User user = User({

    User user_data_create = User({
      "@type": special_type,
      "id": id,
      "name": name,
      "username": username,
      "company": company,
      "bio": bio,
      "type": type,
      "followers_count": followers_count,
      "following_count": following_count,
      "location": location,
      "avatar_url": avatar_url,
      "html_url": html_url,
      "site_admin": site_admin,
      "blog": blog,
      "email": email,
      "hirable": hirable,
      "public_repos": public_repos,
      "public_gists": public_gists,
      "create_date": create_date,
      "update_date": update_date,
      "twitter_username": twitter_username,
      "events_url": events_url,
      "followers_url": followers_url,
      "following_url": following_url,
      "gists_url": gists_url,
      "gravatar_id": gravatar_id,
      "node_id": node_id,
      "organizations_url": organizations_url,
      "received_events_url": received_events_url,
      "repos_url": repos_url,
      "starred_at": starred_at,
      "starred_url": starred_url,
      "subscriptions_url": subscriptions_url,
      "url": url,
      "total_private_repos": total_private_repos,
      "owned_private_repos": owned_private_repos,
      "disk_usage": disk_usage,
      "plan": (plan != null) ? plan.toJson() : null,
    });

// return user;
    return user_data_create;
  }
}
