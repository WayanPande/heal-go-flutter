import 'package:flutter/material.dart';
import 'package:heal_go_flutter/models/Destination.dart';

class DetailScreen extends StatelessWidget {

  final Destination destination;

  const DetailScreen({
    Key? key,
    required this.destination
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Image.network(
                destination.image,
                fit: BoxFit.fill,
                height: 400,
                width: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.only(top: 350),
                width: double.infinity,
                height: 600,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          destination.description,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(color: Colors.blue)
                              ),
                              primary: Colors.white,
                              onPrimary: Colors.blue,
                              padding: const EdgeInsets.all(15),
                            ),
                            child: const Icon(Icons.location_pin)
                        ),
                        const SizedBox(width: 15,),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape:  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: const BorderSide(color: Colors.blue)
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 18.5),
                                ),
                                child: const Text("Book now")
                            ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
