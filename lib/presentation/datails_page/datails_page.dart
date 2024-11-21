import 'package:flutter/material.dart';

import '../../domain/models/card.dart';

class DetailsPage extends StatelessWidget {
  final CardData data;
  const DetailsPage(this.data, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 215, 196, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(229, 215, 196, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Image.network(
                data.imageUrl ?? '',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                data.text,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Text(
              data.descriptionText,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
