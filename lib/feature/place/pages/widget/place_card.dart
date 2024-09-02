import 'package:flutter/material.dart';
import 'package:stamp_rally_worship/core/router/router.dart';
import 'package:stamp_rally_worship/feature/place/entity/place.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ShrineListPageRoute(placeId: place.id).push(context);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(place.name),
            ),
          ),
        ),
      ),
    );
  }
}
