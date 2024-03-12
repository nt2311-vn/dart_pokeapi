import "./api/location_area_req.dart";

Future<void> callbackMap() async {
  final locationArea = await getLocationAreas(null);
  print(locationArea.toString());
}
