import 'package:flutter/material.dart';
import 'package:heal_go_flutter/components/destination_card.dart';
import 'package:heal_go_flutter/components/destination_card_discover.dart';
import 'package:heal_go_flutter/models/Destination.dart';

class DiscoverScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text(
                "Let's Go",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black12,
                          width: 0.0
                      ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black12,
                        width: 0.0
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  fillColor: Colors.black12,
                  filled: true,
                  prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                  ),
                  hintText: "Search"
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                  child: GridView.builder(
                      itemCount: destination.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7
                      ),
                      itemBuilder: (context, index) => DestinationCardDiscover(destination: destination[index])
                  ),
              )
            ],
          ),
        )

    );
  }
}
