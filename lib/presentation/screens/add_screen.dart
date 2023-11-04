import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:softteco_rest_json/bloc/user_bloc/user_bloc.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/application_app_bar.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/add_related/image_input.dart';
import '../../models/user.dart';
import '../widgets/screens_widgets/add_related/global_form_key.dart';
import '../widgets/screens_widgets/add_related/input_form.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  File? picture;
  Gender gender = Gender.female;
  Map<String, String> newUserInfo = {
    "name": "",
    "surname": "",
    "phone": "",
    "adress": "",
    "email": ""
  };

  void onReset() {
    formKey.currentState!.reset();
  }

  void onSubmit() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      User newUser = User(
          name: newUserInfo["name"]!,
          surname: newUserInfo["surname"]!,
          adress: newUserInfo["adress"]!,
          phoneNumber: newUserInfo["phone"]!,
          email: newUserInfo["email"]!,
          thumbNail: null,
          mediumPicture: null,
          largePicture: null,
          memoryImage: picture,
          gender: gender);

      context.read<UserBloc>().add(AddUser(user: newUser));
      Navigator.of(context).pop();
    }

    if (picture == null) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "Set image before submitting!",
      )));
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(title: "Add user", actions: NoActions().actions),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  children: [
                    InputImage(
                      onSelectedImage: (image) {
                        setState(() {
                          picture = image;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InputUserInfo(
                      newUserInfo: (key, value) {
                        newUserInfo[key] = value;
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField(
                            value: gender,
                            items: const [
                              DropdownMenuItem(
                                  value: Gender.male, child: Text("Male")),
                              DropdownMenuItem(
                                value: Gender.female,
                                child: Text("Female"),
                              )
                            ],
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                            validator: (value) {
                              if (value == null) {
                                return "Gender is required";
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                            child: TextButton(
                          onPressed: onReset,
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).colorScheme.secondary),
                          ),
                          child: const Text("Reset"),
                        )),
                        Expanded(
                            child: ElevatedButton(
                          onPressed: onSubmit,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).colorScheme.secondary),
                          ),
                          child: const Text("Submit"),
                        ))
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}
