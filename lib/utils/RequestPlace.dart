import 'package:flutter/cupertino.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:uber_lyft_app/utils/Constants.dart';


Future<Prediction> getPaceOverlay (BuildContext context) async{
  return await PlacesAutocomplete.show(
    context: context,
    apiKey: Constants.kGoogleApiKey,
    mode: Mode.overlay, // Mode.fullscreen
    language: "br",
    components: [new Component(Component.country, "br")]
  );
}