// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "user_plan.dart";


class User extends JsonSchemeRaw {

  
  User(super.rawData);
   
  static Map get defaultData {
    return {"@type":"user","login":"azkadev","id":82513502,"node_id":"MDQ6VXNlcjgyNTEzNTAy","avatar_url":"https://avatars.githubusercontent.com/u/82513502?v=4","gravatar_id":"","url":"https://api.github.com/users/azkadev","html_url":"https://github.com/azkadev","followers_url":"https://api.github.com/users/azkadev/followers","following_url":"https://api.github.com/users/azkadev/following{/other_user}","gists_url":"https://api.github.com/users/azkadev/gists{/gist_id}","starred_url":"https://api.github.com/users/azkadev/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/azkadev/subscriptions","organizations_url":"https://api.github.com/users/azkadev/orgs","repos_url":"https://api.github.com/users/azkadev/repos","events_url":"https://api.github.com/users/azkadev/events{/privacy}","received_events_url":"https://api.github.com/users/azkadev/received_events","type":"User","site_admin":false,"name":"telegram_client","company":"@HexaMinate , @ENVIVORE , @GALAXEUS  and Freelance","blog":"","location":"Indonesia","email":null,"hireable":null,"bio":"Azka FullStack(Overflow) Developer:V tertarik pada artifical inteligence, automation","twitter_username":"azka_dev","public_repos":105,"public_gists":3,"followers":119,"following":14,"created_at":"2021-11-10T12:41:02Z","updated_at":"2023-06-01T15:54:21Z","private_gists":9,"total_private_repos":38,"owned_private_repos":38,"disk_usage":953896,"collaborators":1,"two_factor_authentication":true,"plan":{"@type":"userPlan","name":"free","space":976562499,"collaborators":0,"private_repos":10000},"full_name":"azkadev/telegram_client","private":false,"description":"Telegram Client library for help you make userbot or bot telegram and support tdlib telegram database and only support nodejs, dart Flutter, and google-apps-script","fork":false,"forks_url":"https://api.github.com/repos/azkadev/telegram_client/forks","keys_url":"https://api.github.com/repos/azkadev/telegram_client/keys{/key_id}","collaborators_url":"https://api.github.com/repos/azkadev/telegram_client/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/azkadev/telegram_client/teams","hooks_url":"https://api.github.com/repos/azkadev/telegram_client/hooks","issue_events_url":"https://api.github.com/repos/azkadev/telegram_client/issues/events{/number}","assignees_url":"https://api.github.com/repos/azkadev/telegram_client/assignees{/user}","branches_url":"https://api.github.com/repos/azkadev/telegram_client/branches{/branch}","tags_url":"https://api.github.com/repos/azkadev/telegram_client/tags","blobs_url":"https://api.github.com/repos/azkadev/telegram_client/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/azkadev/telegram_client/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/azkadev/telegram_client/git/refs{/sha}","trees_url":"https://api.github.com/repos/azkadev/telegram_client/git/trees{/sha}","statuses_url":"https://api.github.com/repos/azkadev/telegram_client/statuses/{sha}","languages_url":"https://api.github.com/repos/azkadev/telegram_client/languages","stargazers_url":"https://api.github.com/repos/azkadev/telegram_client/stargazers","contributors_url":"https://api.github.com/repos/azkadev/telegram_client/contributors","subscribers_url":"https://api.github.com/repos/azkadev/telegram_client/subscribers","subscription_url":"https://api.github.com/repos/azkadev/telegram_client/subscription","commits_url":"https://api.github.com/repos/azkadev/telegram_client/commits{/sha}","git_commits_url":"https://api.github.com/repos/azkadev/telegram_client/git/commits{/sha}","comments_url":"https://api.github.com/repos/azkadev/telegram_client/comments{/number}","issue_comment_url":"https://api.github.com/repos/azkadev/telegram_client/issues/comments{/number}","contents_url":"https://api.github.com/repos/azkadev/telegram_client/contents/{+path}","compare_url":"https://api.github.com/repos/azkadev/telegram_client/compare/{base}...{head}","merges_url":"https://api.github.com/repos/azkadev/telegram_client/merges","archive_url":"https://api.github.com/repos/azkadev/telegram_client/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/azkadev/telegram_client/downloads","issues_url":"https://api.github.com/repos/azkadev/telegram_client/issues{/number}","pulls_url":"https://api.github.com/repos/azkadev/telegram_client/pulls{/number}","milestones_url":"https://api.github.com/repos/azkadev/telegram_client/milestones{/number}","notifications_url":"https://api.github.com/repos/azkadev/telegram_client/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/azkadev/telegram_client/labels{/name}","releases_url":"https://api.github.com/repos/azkadev/telegram_client/releases{/id}","deployments_url":"https://api.github.com/repos/azkadev/telegram_client/deployments","pushed_at":"2023-05-26T16:40:15Z","git_url":"git://github.com/azkadev/telegram_client.git","ssh_url":"git@github.com:azkadev/telegram_client.git","clone_url":"https://github.com/azkadev/telegram_client.git","svn_url":"https://github.com/azkadev/telegram_client","homepage":"","size":216027,"stargazers_count":96,"watchers_count":96,"language":"Dart","has_issues":true,"has_projects":false,"has_downloads":true,"has_wiki":false,"has_pages":true,"has_discussions":true,"forks_count":16,"mirror_url":null,"archived":false,"disabled":false,"open_issues_count":0,"allow_forking":true,"is_template":false,"web_commit_signoff_required":false,"visibility":"public","forks":16,"open_issues":0,"watchers":96,"default_branch":"main"};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get login {
    try {
      if (rawData["login"] is String == false){
        return null;
      }
      return rawData["login"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get id {
    try {
      if (rawData["id"] is int == false){
        return null;
      }
      return rawData["id"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get node_id {
    try {
      if (rawData["node_id"] is String == false){
        return null;
      }
      return rawData["node_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get avatar_url {
    try {
      if (rawData["avatar_url"] is String == false){
        return null;
      }
      return rawData["avatar_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get gravatar_id {
    try {
      if (rawData["gravatar_id"] is String == false){
        return null;
      }
      return rawData["gravatar_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get url {
    try {
      if (rawData["url"] is String == false){
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get html_url {
    try {
      if (rawData["html_url"] is String == false){
        return null;
      }
      return rawData["html_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get followers_url {
    try {
      if (rawData["followers_url"] is String == false){
        return null;
      }
      return rawData["followers_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get following_url {
    try {
      if (rawData["following_url"] is String == false){
        return null;
      }
      return rawData["following_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get gists_url {
    try {
      if (rawData["gists_url"] is String == false){
        return null;
      }
      return rawData["gists_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get starred_url {
    try {
      if (rawData["starred_url"] is String == false){
        return null;
      }
      return rawData["starred_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get subscriptions_url {
    try {
      if (rawData["subscriptions_url"] is String == false){
        return null;
      }
      return rawData["subscriptions_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get organizations_url {
    try {
      if (rawData["organizations_url"] is String == false){
        return null;
      }
      return rawData["organizations_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get repos_url {
    try {
      if (rawData["repos_url"] is String == false){
        return null;
      }
      return rawData["repos_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get events_url {
    try {
      if (rawData["events_url"] is String == false){
        return null;
      }
      return rawData["events_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get received_events_url {
    try {
      if (rawData["received_events_url"] is String == false){
        return null;
      }
      return rawData["received_events_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get type {
    try {
      if (rawData["type"] is String == false){
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  bool? get site_admin {
    try {
      if (rawData["site_admin"] is bool == false){
        return null;
      }
      return rawData["site_admin"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get company {
    try {
      if (rawData["company"] is String == false){
        return null;
      }
      return rawData["company"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get blog {
    try {
      if (rawData["blog"] is String == false){
        return null;
      }
      return rawData["blog"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get location {
    try {
      if (rawData["location"] is String == false){
        return null;
      }
      return rawData["location"] as String;
    } catch (e) {
      return null;
    }
  }


  
  Object? get email {
    try {
      if (rawData["email"] is Object == false){
        return null;
      }
      return rawData["email"] as Object;
    } catch (e) {
      return null;
    }
  }


  
  Object? get hireable {
    try {
      if (rawData["hireable"] is Object == false){
        return null;
      }
      return rawData["hireable"] as Object;
    } catch (e) {
      return null;
    }
  }


  
  String? get bio {
    try {
      if (rawData["bio"] is String == false){
        return null;
      }
      return rawData["bio"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get twitter_username {
    try {
      if (rawData["twitter_username"] is String == false){
        return null;
      }
      return rawData["twitter_username"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get public_repos {
    try {
      if (rawData["public_repos"] is int == false){
        return null;
      }
      return rawData["public_repos"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get public_gists {
    try {
      if (rawData["public_gists"] is int == false){
        return null;
      }
      return rawData["public_gists"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get followers {
    try {
      if (rawData["followers"] is int == false){
        return null;
      }
      return rawData["followers"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get following {
    try {
      if (rawData["following"] is int == false){
        return null;
      }
      return rawData["following"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get created_at {
    try {
      if (rawData["created_at"] is String == false){
        return null;
      }
      return rawData["created_at"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get updated_at {
    try {
      if (rawData["updated_at"] is String == false){
        return null;
      }
      return rawData["updated_at"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get private_gists {
    try {
      if (rawData["private_gists"] is int == false){
        return null;
      }
      return rawData["private_gists"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get total_private_repos {
    try {
      if (rawData["total_private_repos"] is int == false){
        return null;
      }
      return rawData["total_private_repos"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get owned_private_repos {
    try {
      if (rawData["owned_private_repos"] is int == false){
        return null;
      }
      return rawData["owned_private_repos"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get disk_usage {
    try {
      if (rawData["disk_usage"] is int == false){
        return null;
      }
      return rawData["disk_usage"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get collaborators {
    try {
      if (rawData["collaborators"] is int == false){
        return null;
      }
      return rawData["collaborators"] as int;
    } catch (e) {
      return null;
    }
  }


  
  bool? get two_factor_authentication {
    try {
      if (rawData["two_factor_authentication"] is bool == false){
        return null;
      }
      return rawData["two_factor_authentication"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  UserPlan get plan {
    try {
      if (rawData["plan"] is Map == false){
        return UserPlan({}); 
      }
      return UserPlan(rawData["plan"] as Map);
    } catch (e) {  
      return UserPlan({}); 
    }
  }


  
  String? get full_name {
    try {
      if (rawData["full_name"] is String == false){
        return null;
      }
      return rawData["full_name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  bool? get private {
    try {
      if (rawData["private"] is bool == false){
        return null;
      }
      return rawData["private"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  String? get description {
    try {
      if (rawData["description"] is String == false){
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }


  
  bool? get fork {
    try {
      if (rawData["fork"] is bool == false){
        return null;
      }
      return rawData["fork"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  String? get forks_url {
    try {
      if (rawData["forks_url"] is String == false){
        return null;
      }
      return rawData["forks_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get keys_url {
    try {
      if (rawData["keys_url"] is String == false){
        return null;
      }
      return rawData["keys_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get collaborators_url {
    try {
      if (rawData["collaborators_url"] is String == false){
        return null;
      }
      return rawData["collaborators_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get teams_url {
    try {
      if (rawData["teams_url"] is String == false){
        return null;
      }
      return rawData["teams_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get hooks_url {
    try {
      if (rawData["hooks_url"] is String == false){
        return null;
      }
      return rawData["hooks_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get issue_events_url {
    try {
      if (rawData["issue_events_url"] is String == false){
        return null;
      }
      return rawData["issue_events_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get assignees_url {
    try {
      if (rawData["assignees_url"] is String == false){
        return null;
      }
      return rawData["assignees_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get branches_url {
    try {
      if (rawData["branches_url"] is String == false){
        return null;
      }
      return rawData["branches_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get tags_url {
    try {
      if (rawData["tags_url"] is String == false){
        return null;
      }
      return rawData["tags_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get blobs_url {
    try {
      if (rawData["blobs_url"] is String == false){
        return null;
      }
      return rawData["blobs_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get git_tags_url {
    try {
      if (rawData["git_tags_url"] is String == false){
        return null;
      }
      return rawData["git_tags_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get git_refs_url {
    try {
      if (rawData["git_refs_url"] is String == false){
        return null;
      }
      return rawData["git_refs_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get trees_url {
    try {
      if (rawData["trees_url"] is String == false){
        return null;
      }
      return rawData["trees_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get statuses_url {
    try {
      if (rawData["statuses_url"] is String == false){
        return null;
      }
      return rawData["statuses_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get languages_url {
    try {
      if (rawData["languages_url"] is String == false){
        return null;
      }
      return rawData["languages_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get stargazers_url {
    try {
      if (rawData["stargazers_url"] is String == false){
        return null;
      }
      return rawData["stargazers_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get contributors_url {
    try {
      if (rawData["contributors_url"] is String == false){
        return null;
      }
      return rawData["contributors_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get subscribers_url {
    try {
      if (rawData["subscribers_url"] is String == false){
        return null;
      }
      return rawData["subscribers_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get subscription_url {
    try {
      if (rawData["subscription_url"] is String == false){
        return null;
      }
      return rawData["subscription_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get commits_url {
    try {
      if (rawData["commits_url"] is String == false){
        return null;
      }
      return rawData["commits_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get git_commits_url {
    try {
      if (rawData["git_commits_url"] is String == false){
        return null;
      }
      return rawData["git_commits_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get comments_url {
    try {
      if (rawData["comments_url"] is String == false){
        return null;
      }
      return rawData["comments_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get issue_comment_url {
    try {
      if (rawData["issue_comment_url"] is String == false){
        return null;
      }
      return rawData["issue_comment_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get contents_url {
    try {
      if (rawData["contents_url"] is String == false){
        return null;
      }
      return rawData["contents_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get compare_url {
    try {
      if (rawData["compare_url"] is String == false){
        return null;
      }
      return rawData["compare_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get merges_url {
    try {
      if (rawData["merges_url"] is String == false){
        return null;
      }
      return rawData["merges_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get archive_url {
    try {
      if (rawData["archive_url"] is String == false){
        return null;
      }
      return rawData["archive_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get downloads_url {
    try {
      if (rawData["downloads_url"] is String == false){
        return null;
      }
      return rawData["downloads_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get issues_url {
    try {
      if (rawData["issues_url"] is String == false){
        return null;
      }
      return rawData["issues_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get pulls_url {
    try {
      if (rawData["pulls_url"] is String == false){
        return null;
      }
      return rawData["pulls_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get milestones_url {
    try {
      if (rawData["milestones_url"] is String == false){
        return null;
      }
      return rawData["milestones_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get notifications_url {
    try {
      if (rawData["notifications_url"] is String == false){
        return null;
      }
      return rawData["notifications_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get labels_url {
    try {
      if (rawData["labels_url"] is String == false){
        return null;
      }
      return rawData["labels_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get releases_url {
    try {
      if (rawData["releases_url"] is String == false){
        return null;
      }
      return rawData["releases_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get deployments_url {
    try {
      if (rawData["deployments_url"] is String == false){
        return null;
      }
      return rawData["deployments_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get pushed_at {
    try {
      if (rawData["pushed_at"] is String == false){
        return null;
      }
      return rawData["pushed_at"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get git_url {
    try {
      if (rawData["git_url"] is String == false){
        return null;
      }
      return rawData["git_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get ssh_url {
    try {
      if (rawData["ssh_url"] is String == false){
        return null;
      }
      return rawData["ssh_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get clone_url {
    try {
      if (rawData["clone_url"] is String == false){
        return null;
      }
      return rawData["clone_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get svn_url {
    try {
      if (rawData["svn_url"] is String == false){
        return null;
      }
      return rawData["svn_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get homepage {
    try {
      if (rawData["homepage"] is String == false){
        return null;
      }
      return rawData["homepage"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get size {
    try {
      if (rawData["size"] is int == false){
        return null;
      }
      return rawData["size"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get stargazers_count {
    try {
      if (rawData["stargazers_count"] is int == false){
        return null;
      }
      return rawData["stargazers_count"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get watchers_count {
    try {
      if (rawData["watchers_count"] is int == false){
        return null;
      }
      return rawData["watchers_count"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get language {
    try {
      if (rawData["language"] is String == false){
        return null;
      }
      return rawData["language"] as String;
    } catch (e) {
      return null;
    }
  }


  
  bool? get has_issues {
    try {
      if (rawData["has_issues"] is bool == false){
        return null;
      }
      return rawData["has_issues"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get has_projects {
    try {
      if (rawData["has_projects"] is bool == false){
        return null;
      }
      return rawData["has_projects"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get has_downloads {
    try {
      if (rawData["has_downloads"] is bool == false){
        return null;
      }
      return rawData["has_downloads"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get has_wiki {
    try {
      if (rawData["has_wiki"] is bool == false){
        return null;
      }
      return rawData["has_wiki"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get has_pages {
    try {
      if (rawData["has_pages"] is bool == false){
        return null;
      }
      return rawData["has_pages"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get has_discussions {
    try {
      if (rawData["has_discussions"] is bool == false){
        return null;
      }
      return rawData["has_discussions"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  int? get forks_count {
    try {
      if (rawData["forks_count"] is int == false){
        return null;
      }
      return rawData["forks_count"] as int;
    } catch (e) {
      return null;
    }
  }


  
  Object? get mirror_url {
    try {
      if (rawData["mirror_url"] is Object == false){
        return null;
      }
      return rawData["mirror_url"] as Object;
    } catch (e) {
      return null;
    }
  }


  
  bool? get archived {
    try {
      if (rawData["archived"] is bool == false){
        return null;
      }
      return rawData["archived"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get disabled {
    try {
      if (rawData["disabled"] is bool == false){
        return null;
      }
      return rawData["disabled"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  int? get open_issues_count {
    try {
      if (rawData["open_issues_count"] is int == false){
        return null;
      }
      return rawData["open_issues_count"] as int;
    } catch (e) {
      return null;
    }
  }


  
  bool? get allow_forking {
    try {
      if (rawData["allow_forking"] is bool == false){
        return null;
      }
      return rawData["allow_forking"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get is_template {
    try {
      if (rawData["is_template"] is bool == false){
        return null;
      }
      return rawData["is_template"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get web_commit_signoff_required {
    try {
      if (rawData["web_commit_signoff_required"] is bool == false){
        return null;
      }
      return rawData["web_commit_signoff_required"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  String? get visibility {
    try {
      if (rawData["visibility"] is String == false){
        return null;
      }
      return rawData["visibility"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get forks {
    try {
      if (rawData["forks"] is int == false){
        return null;
      }
      return rawData["forks"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get open_issues {
    try {
      if (rawData["open_issues"] is int == false){
        return null;
      }
      return rawData["open_issues"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get watchers {
    try {
      if (rawData["watchers"] is int == false){
        return null;
      }
      return rawData["watchers"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get default_branch {
    try {
      if (rawData["default_branch"] is String == false){
        return null;
      }
      return rawData["default_branch"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static User create({

    String special_type = "user",
    String? login,
    int? id,
    String? node_id,
    String? avatar_url,
    String? gravatar_id,
    String? url,
    String? html_url,
    String? followers_url,
    String? following_url,
    String? gists_url,
    String? starred_url,
    String? subscriptions_url,
    String? organizations_url,
    String? repos_url,
    String? events_url,
    String? received_events_url,
    String? type,
    bool? site_admin,
    String? name,
    String? company,
    String? blog,
    String? location,
    Object? email,
    Object? hireable,
    String? bio,
    String? twitter_username,
    int? public_repos,
    int? public_gists,
    int? followers,
    int? following,
    String? created_at,
    String? updated_at,
    int? private_gists,
    int? total_private_repos,
    int? owned_private_repos,
    int? disk_usage,
    int? collaborators,
    bool? two_factor_authentication,
      UserPlan? plan,
    String? full_name,
    bool? private,
    String? description,
    bool? fork,
    String? forks_url,
    String? keys_url,
    String? collaborators_url,
    String? teams_url,
    String? hooks_url,
    String? issue_events_url,
    String? assignees_url,
    String? branches_url,
    String? tags_url,
    String? blobs_url,
    String? git_tags_url,
    String? git_refs_url,
    String? trees_url,
    String? statuses_url,
    String? languages_url,
    String? stargazers_url,
    String? contributors_url,
    String? subscribers_url,
    String? subscription_url,
    String? commits_url,
    String? git_commits_url,
    String? comments_url,
    String? issue_comment_url,
    String? contents_url,
    String? compare_url,
    String? merges_url,
    String? archive_url,
    String? downloads_url,
    String? issues_url,
    String? pulls_url,
    String? milestones_url,
    String? notifications_url,
    String? labels_url,
    String? releases_url,
    String? deployments_url,
    String? pushed_at,
    String? git_url,
    String? ssh_url,
    String? clone_url,
    String? svn_url,
    String? homepage,
    int? size,
    int? stargazers_count,
    int? watchers_count,
    String? language,
    bool? has_issues,
    bool? has_projects,
    bool? has_downloads,
    bool? has_wiki,
    bool? has_pages,
    bool? has_discussions,
    int? forks_count,
    Object? mirror_url,
    bool? archived,
    bool? disabled,
    int? open_issues_count,
    bool? allow_forking,
    bool? is_template,
    bool? web_commit_signoff_required,
    String? visibility,
    int? forks,
    int? open_issues,
    int? watchers,
    String? default_branch,
})  {
    // User user = User({

    User user_data_create = User({
  
      "@type": special_type,
      "login": login,
      "id": id,
      "node_id": node_id,
      "avatar_url": avatar_url,
      "gravatar_id": gravatar_id,
      "url": url,
      "html_url": html_url,
      "followers_url": followers_url,
      "following_url": following_url,
      "gists_url": gists_url,
      "starred_url": starred_url,
      "subscriptions_url": subscriptions_url,
      "organizations_url": organizations_url,
      "repos_url": repos_url,
      "events_url": events_url,
      "received_events_url": received_events_url,
      "type": type,
      "site_admin": site_admin,
      "name": name,
      "company": company,
      "blog": blog,
      "location": location,
      "email": email,
      "hireable": hireable,
      "bio": bio,
      "twitter_username": twitter_username,
      "public_repos": public_repos,
      "public_gists": public_gists,
      "followers": followers,
      "following": following,
      "created_at": created_at,
      "updated_at": updated_at,
      "private_gists": private_gists,
      "total_private_repos": total_private_repos,
      "owned_private_repos": owned_private_repos,
      "disk_usage": disk_usage,
      "collaborators": collaborators,
      "two_factor_authentication": two_factor_authentication,
      "plan": (plan != null)?plan.toJson(): null,
      "full_name": full_name,
      "private": private,
      "description": description,
      "fork": fork,
      "forks_url": forks_url,
      "keys_url": keys_url,
      "collaborators_url": collaborators_url,
      "teams_url": teams_url,
      "hooks_url": hooks_url,
      "issue_events_url": issue_events_url,
      "assignees_url": assignees_url,
      "branches_url": branches_url,
      "tags_url": tags_url,
      "blobs_url": blobs_url,
      "git_tags_url": git_tags_url,
      "git_refs_url": git_refs_url,
      "trees_url": trees_url,
      "statuses_url": statuses_url,
      "languages_url": languages_url,
      "stargazers_url": stargazers_url,
      "contributors_url": contributors_url,
      "subscribers_url": subscribers_url,
      "subscription_url": subscription_url,
      "commits_url": commits_url,
      "git_commits_url": git_commits_url,
      "comments_url": comments_url,
      "issue_comment_url": issue_comment_url,
      "contents_url": contents_url,
      "compare_url": compare_url,
      "merges_url": merges_url,
      "archive_url": archive_url,
      "downloads_url": downloads_url,
      "issues_url": issues_url,
      "pulls_url": pulls_url,
      "milestones_url": milestones_url,
      "notifications_url": notifications_url,
      "labels_url": labels_url,
      "releases_url": releases_url,
      "deployments_url": deployments_url,
      "pushed_at": pushed_at,
      "git_url": git_url,
      "ssh_url": ssh_url,
      "clone_url": clone_url,
      "svn_url": svn_url,
      "homepage": homepage,
      "size": size,
      "stargazers_count": stargazers_count,
      "watchers_count": watchers_count,
      "language": language,
      "has_issues": has_issues,
      "has_projects": has_projects,
      "has_downloads": has_downloads,
      "has_wiki": has_wiki,
      "has_pages": has_pages,
      "has_discussions": has_discussions,
      "forks_count": forks_count,
      "mirror_url": mirror_url,
      "archived": archived,
      "disabled": disabled,
      "open_issues_count": open_issues_count,
      "allow_forking": allow_forking,
      "is_template": is_template,
      "web_commit_signoff_required": web_commit_signoff_required,
      "visibility": visibility,
      "forks": forks,
      "open_issues": open_issues,
      "watchers": watchers,
      "default_branch": default_branch,


  });
 
// return user;
return user_data_create;



      }
}