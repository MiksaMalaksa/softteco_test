import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';

import 'global_form_key.dart';

class InputUserInfo extends StatefulWidget {
  const InputUserInfo({super.key, required this.newUserInfo});

  final void Function(String key, String value) newUserInfo;

  @override
  State<InputUserInfo> createState() => _InputUserInfoState();
}

class _InputUserInfoState extends State<InputUserInfo> {
  String name = "";
  String surname = "";
  String adress = "";
  String telephoneNumber = "";
  String email = "";
  Gender gender = Gender.female;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        TextFormField(
            maxLength: 20,
            cursorColor: Theme.of(context).colorScheme.secondary,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              labelText: "Write user's name",
              labelStyle: TextStyle(
                color: Theme.of(context).primaryColorDark,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.6),
                ),
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
            onSaved: (newValue) {
              name = newValue!;
              widget.newUserInfo("name", name);
            }),
        TextFormField(
            maxLength: 20,
            cursorColor: Theme.of(context).colorScheme.secondary,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              label: const Text(
                "Write user's surname",
              ),
              labelStyle: TextStyle(
                color: Theme.of(context).primaryColorDark,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.6),
                ),
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
            onSaved: (newValue) {
              surname = newValue!;
              widget.newUserInfo("surname", surname);
            }),
        TextFormField(
          maxLength: 20,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            label: const Text(
              "Write user's adress",
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColorDark,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
              ),
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
          onSaved: (newValue) {
            adress = newValue!;
            widget.newUserInfo("adress", adress);
          },
        ),
        TextFormField(
          maxLength: 15,
          keyboardType: TextInputType.phone,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            label: const Text(
              "Write user's telephone number",
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColorDark,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
              ),
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
          onSaved: (newValue) {
            telephoneNumber = newValue!;
            widget.newUserInfo("phone", telephoneNumber);
          },
        ),
        TextFormField(
          maxLength: 30,
          keyboardType: TextInputType.emailAddress,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            label: const Text(
              "Write user's email",
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColorDark,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
              ),
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
          onSaved: (newValue) {
            email = newValue!;
            widget.newUserInfo("email", email);
          },
        ),
      ]),
    );
  }
}
