// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class License extends JsonSchemeRaw {

  
  License(super.rawData);
   
  static Map get defaultData {
    return {"@type":"license","key":"other","name":"Other","spdx_id":"NOASSERTION","url":null,"node_id":"MDc6TGljZW5zZTA="};
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


  
  String? get key {
    try {
      if (rawData["key"] is String == false){
        return null;
      }
      return rawData["key"] as String;
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


  
  String? get spdx_id {
    try {
      if (rawData["spdx_id"] is String == false){
        return null;
      }
      return rawData["spdx_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  Object? get url {
    try {
      if (rawData["url"] is Object == false){
        return null;
      }
      return rawData["url"] as Object;
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


  
  static License create({

    String special_type = "license",
    String? key,
    String? name,
    String? spdx_id,
    Object? url,
    String? node_id,
})  {
    // License license = License({

    License license_data_create = License({
  
      "@type": special_type,
      "key": key,
      "name": name,
      "spdx_id": spdx_id,
      "url": url,
      "node_id": node_id,


  });
 
// return license;
return license_data_create;



      }
}