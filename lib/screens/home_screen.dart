import 'package:flutter/material.dart';
import 'package:heal_go_flutter/components/box_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BoxHeader(),
            Padding(
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

          ],
        ),
      )
    );
  }
}
