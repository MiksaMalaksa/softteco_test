import 'dart:io';

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
  String adress = "";
  String telephoneNumber = "";
  String email = "";
  Gender gender = Gender.female;

  void onReset() {
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        TextFormField(
          maxLength: 20,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: const InputDecoration(
            label: Text(
              "Write user's name",
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Name is required";
            } else if (value.trim().length <= 1) {
              return "Please enter a valid Name";
            }
            return null;
          },
          onSaved: (newValue) => name = newValue!,
        ),
        TextFormField(
          maxLength: 20,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: const InputDecoration(
            label: Text(
              "Write user's surname",
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Surname is required";
            } else if (value.trim().length <= 1) {
              return "Please enter a valid surname";
            }
            return null;
          },
          onSaved: (newValue) => surname = newValue!,
        ),
        TextFormField(
          maxLength: 20,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: const InputDecoration(
            label: Text(
              "Write user's adress",
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Adress is required";
            } else if (value.trim().length <= 1) {
              return "Please enter a valid address";
            }
            return null;
          },
          onSaved: (newValue) => adress = newValue!,
        ),
        TextFormField(
          maxLength: 15,
          keyboardType: TextInputType.phone,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: const InputDecoration(
            label: Text(
              "Write user's telephone number",
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Phone number is required";
            } else if (value.trim().length < 10) {
              return "Please enter a valid phone address";
            }
            return null;
          },
          onSaved: (newValue) => telephoneNumber = newValue!,
        ),
        TextFormField(
          maxLength: 30,
          keyboardType: TextInputType.emailAddress,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: const InputDecoration(
            label: Text(
              "Write user's email",
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Email is required";
            }
            if (!value.contains('@') || !value.contains('.')) {
              return "Please enter a valid email address";
            }
            return null;
          },
          onSaved: (newValue) => email = newValue!,
        ),
      ]),
    );
  }
}
