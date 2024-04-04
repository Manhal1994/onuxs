final locations = [
  Location(
      id: 1,
      city: "Dearborn",
      street: "1021 Mason St,",
      address: "Dearborn, MI 48124",
      distance: "230"),
  Location(
      id: 2,
      city: "Detroit",
      street: "6915 Greenfield Rd,",
      address: "Detroit, MI 48228",
      distance: "9.80")
];

class Location {
  final int id;
  final String city;
  final String street;
  final String address;
  final String distance;

  Location(
      {required this.id,
      required this.city,
      required this.address,
      required this.street,
      required this.distance});
}
