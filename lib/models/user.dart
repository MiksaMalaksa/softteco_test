import 'dart:io';

import 'package:uuid/uuid.dart';

enum Gender {
  male,
  female,
}

const uuid = Uuid();

class User {
  final String name;
  final String surname;
  final String adress;
  final String phoneNumber;
  final String email;
  final String? thumbNail;
  final String? mediumPicture;
  final String? largePicture;
  final File? memoryImage;
  final Gender gender;
  final String id;

  User(
      {required this.name,
      required this.surname,
      required this.adress,
      required this.phoneNumber,
      required this.email,
      required this.thumbNail,
      required this.mediumPicture,
      required this.largePicture,
      required this.memoryImage,
      required this.gender})
      : id = uuid.v4();

  String get fullName {
    return "$name $surname";
  }
}
