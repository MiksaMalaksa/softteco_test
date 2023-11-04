import 'dart:io';
import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/application_app_bar.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/add_related/image_input.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/add_related/input_form.dart';
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
  String adres = "";
  String telephoneNumber = "";
  String email = "";
  Gender gender = Gender.female;

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
                          "Write user's adres",
                        ),
                      ),
                    ),
                    TextFormField(
                      maxLength: 20,
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
                    ),
                      TextFormField(
                      maxLength: 20,
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
                    ),
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
