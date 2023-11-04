import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';
import 'package:softteco_rest_json/presentation/screens/details_screen.dart';

class GridElement extends StatelessWidget {
  const GridElement({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailsScreen(user: user)),
        );
      },
      splashColor: Theme.of(context).colorScheme.secondary,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.secondary.withOpacity(0.6),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: FractionallySizedBox(
                heightFactor: 0.9,
                widthFactor: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 3, color: Colors.white)),
                  child: user.largePicture == null
                      ? Image.file(
                          user.memoryImage!,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          user.largePicture!,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Text(
                user.fullName,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 18),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: Text(
                user.phoneNumber,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 18),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
