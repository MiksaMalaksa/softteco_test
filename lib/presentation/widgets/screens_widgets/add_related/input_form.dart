import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';
import 'input_element.dart';

class InputUserInfo extends StatefulWidget {
  const InputUserInfo({super.key});

  @override
  State<InputUserInfo> createState() => _InputUserInfoState();
}

class _InputUserInfoState extends State<InputUserInfo> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  String surname = "";
  String adres = "";
  String telephoneNumber = "";
  String email = "";
  Gender gender = Gender.female;
  List<String> titles = ["name", "surname", "adres", "phone", "email"];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return InputFormField(
              title: titles[index],
            );
          }),
    );
  }
}
