import 'dart:convert';
import '../models/user.dart';
import 'package:http/http.dart' as http;

Future<List<User>> getUsers() async {
  final response =
      await http.get(Uri.parse('https://randomuser.me/api/?results=100'));
  List<User> users = [];

  final jsonData = json.decode(response.body);
  final List<dynamic> results = jsonData['results'];
  for (var result in results) {
    Gender gender = result["gender"] == "male" ? Gender.male : Gender.female;
    String name = result["name"]["first"];
    String surname = result["name"]["last"];
    String location = result["location"]["street"]["name"];
    String phoneNumber = result["phone"];
    String email = result["email"];
    String thumbNailPicture = result["picture"]["thumbnail"];
    String mediumPicture = result["picture"]["medium"];
    String largePicture = result["picture"]["large"];

    User user = User(
        name: name,
        surname: surname,
        adress: location,
        phoneNumber: phoneNumber,
        email: email,
        thumbNail: thumbNailPicture,
        mediumPicture: mediumPicture,
        largePicture: largePicture,
        memoryImage: null,
        gender: gender);

    users.add(user);
  }
  return users;
}
