import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        user.fullName,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
