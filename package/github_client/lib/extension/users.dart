import 'package:github_client/scheme/scheme.dart' as scheme;
import 'package:github_client/scheme_raw/scheme_raw.dart' as scheme_raw;

extension UserDataRawExtension on scheme_raw.User {
  scheme.User get toUserScheme {
    Map jsonData = {
      "@type": "user",
      "id": id,
      "name": name,
      "username": login,
      "company": company,
      "bio": bio,
      "type": type!.toLowerCase(),
      "followers_count": followers,
      "following_count": following,
      "location": location,
      "avatar_url": avatar_url,
      "html_url": html_url,
      "site_admin": site_admin,
      "blog": blog,
      "email": email,
      "hirable": hireable,
      "public_repos": public_repos,
      "public_gists": public_gists,
      "create_date": DateTime.tryParse(created_at ?? "")!.millisecondsSinceEpoch,
      "update_date": DateTime.tryParse(updated_at ?? "")!.millisecondsSinceEpoch,
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
      "starred_url": starred_url,
      "subscriptions_url": subscriptions_url,
      "url": url,
      "total_private_repos": total_private_repos,
      "owned_private_repos": owned_private_repos,
      "disk_usage": disk_usage,
      "plan": {
        "@type": "userPlan",
        "name": plan.name,
        "space": plan.space,
        "private_repos": plan.private_repos,
        "collaborators": plan.collaborators,
      }
    };

    return scheme.User(jsonData);
  }
}
