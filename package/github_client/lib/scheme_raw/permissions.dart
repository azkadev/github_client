// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class Permissions extends JsonSchemeRaw {

  
  Permissions(super.rawData);
   
  static Map get defaultData {
    return {"@type":"permissions","admin":true,"maintain":true,"push":true,"triage":true,"pull":true};
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


  
  bool? get admin {
    try {
      if (rawData["admin"] is bool == false){
        return null;
      }
      return rawData["admin"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get maintain {
    try {
      if (rawData["maintain"] is bool == false){
        return null;
      }
      return rawData["maintain"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get push {
    try {
      if (rawData["push"] is bool == false){
        return null;
      }
      return rawData["push"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get triage {
    try {
      if (rawData["triage"] is bool == false){
        return null;
      }
      return rawData["triage"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  bool? get pull {
    try {
      if (rawData["pull"] is bool == false){
        return null;
      }
      return rawData["pull"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  static Permissions create({

    String special_type = "permissions",
    bool? admin,
    bool? maintain,
    bool? push,
    bool? triage,
    bool? pull,
})  {
    // Permissions permissions = Permissions({

    Permissions permissions_data_create = Permissions({
  
      "@type": special_type,
      "admin": admin,
      "maintain": maintain,
      "push": push,
      "triage": triage,
      "pull": pull,


  });
 
// return permissions;
return permissions_data_create;



      }
}