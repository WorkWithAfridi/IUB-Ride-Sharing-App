import 'package:bnans_iub/model/trip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class FirebaseFunctions {
  Future<bool> registerTrip({
    required String username,
    required String uid,
    required bool toIub,
    required String from,
    required String to,
    required String description,
    required String transportMedium,
    required int seatsAvailable,
    required String scheduledTime,
    required double fare,
    required String licenseNumber,
  }) async {
    try {
      String tripId = Uuid().v1();
      Trip tripToBeRegistered = Trip.name(
          username: username,
          uid: uid,
          tripId: tripId,
          toIub: toIub,
          from: from,
          to: to,
          description: description,
          transportMedium: transportMedium,
          seatsAvailable: seatsAvailable,
          scheduledTime: scheduledTime,
          fare: fare,
          licenseNumber: licenseNumber);

      await FirebaseFirestore.instance
          .collection('activeTrips')
          .doc(tripId)
          .set(tripToBeRegistered.toJson());
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
    return false;
  }
}
