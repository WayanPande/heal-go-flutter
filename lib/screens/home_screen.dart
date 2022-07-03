import 'package:flutter/material.dart';
import 'package:heal_go_flutter/components/BottomNavigation.dart';
import 'package:heal_go_flutter/components/box_header.dart';
import 'package:heal_go_flutter/components/destination_card.dart';
import 'package:heal_go_flutter/models/Destination.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BoxHeader(),
            const Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40.0),
              child: Text(
                "Top Pick Destination For You",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
            ),
            Container(
              height: 400,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => DestinationCard(destination: destination[index]),
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: destination.length)
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
