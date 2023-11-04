import 'dart:io';
import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/application_app_bar.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/add_related/image_input.dart';
import '../../models/user.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  File? picture;
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

  void onSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
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
                  picture = image;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
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
                                  value: Gender.female, child: Text("Female"))
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
              )
            ],
          )),
        ),
      ),
    );
  }
}
