import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/application_app_bar.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/details_related/descreption_element.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    List<String> userInfo = [
      user.phoneNumber,
      user.email,
      user.gender.toString().substring(7)
    ];
    List<String> titles = ["phone number", "email", "gender"];

    return Scaffold(
      appBar:
          ApplicationBar(title: "Details screen", actions: NoActions().actions),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(50),
                child: user.largePicture == null
                    ? Image.file(
                        user.memoryImage!,
                        height: 350,
                        width: 350,
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        user.largePicture!,
                        height: 350,
                        width: 350,
                        fit: BoxFit.cover,
                      ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                user.fullName,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 6,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: userInfo.length,
                  itemBuilder: (context, index) => DescreptionElement(
                      title: titles[index], info: userInfo[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
