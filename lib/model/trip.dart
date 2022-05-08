import 'package:cloud_firestore/cloud_firestore.dart';

class Trip {
  String? username;
  String? uid;
  String? tripId;
  bool? toIub;
  String? from;
  String? to;
  String? description;
  String? transportMedium;
  int? seatsAvailable;
  String? scheduledTime;
  double? fare;
  String? licenseNumber;

  Trip.name({
    required this.username,
    required this.uid,
    required this.tripId,
    required this.toIub,
    required this.from,
    required this.to,
    required this.description,
    required this.transportMedium,
    required this.seatsAvailable,
    required this.scheduledTime,
    required this.fare,
    required this.licenseNumber,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'tripId': tripId,
        'toIub': toIub,
        'from': from,
        'to': to,
        'description': description,
        'transportMedium': transportMedium,
        'seatsAvailable': seatsAvailable,
        'scheduledTime': scheduledTime,
        'fare': fare,
        'licenseNumber': licenseNumber,
      };

  static Trip fromSnap(DocumentSnapshot documentSnapshot) {
    var snapshot = documentSnapshot.data() as Map<String, dynamic>;
    return Trip.name(
      username: snapshot['username'],
      uid: snapshot['uid'],
      tripId: snapshot['tripId'],
      toIub: snapshot['toIub'],
      from: snapshot['from'],
      to: snapshot['to'],
      description: snapshot['description'],
      transportMedium: snapshot['transportMedium'],
      seatsAvailable: snapshot['seatsAvailable'],
      scheduledTime: snapshot['scheduledTime'],
      fare: snapshot['fare'],
      licenseNumber: snapshot['licenseNumber'],
    );
  }
}
