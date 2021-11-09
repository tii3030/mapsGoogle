import 'package:google_maps_flutter/google_maps_flutter.dart';

class JsonMessage{

  String tag;
  List<LatLng> data;

  JsonMessage([tag, data]){
    this.tag;
    this.data;
  }

  JsonMessage.fromJson(Map<String, dynamic> json){
    tag = json['tag'];
    //data = List.castFrom<dynamic, LatLng>(json['data']); //json['data'].cast<List<LatLng>>();
    data=<LatLng>[];
    for (var item in json['data']) {
      data.add(LatLng.fromJson(item));
    }

  }

  Map<String, dynamic> toJson() => {
    'tag':tag,
    'data': data,
  };
}