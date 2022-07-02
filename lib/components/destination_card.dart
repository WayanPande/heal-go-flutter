import 'package:flutter/material.dart';
import 'package:heal_go_flutter/models/Destination.dart';
import 'package:heal_go_flutter/screens/detail_screen.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;

  const DestinationCard({Key? key, required this.destination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(
            destination: destination,
          );
        }));
      },
      child: Container(
        width: 250,
        height: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(destination.image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: 230,
          height: 50,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 5.0), //(x,y)
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                destination.name,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                destination.location,
                style: const TextStyle(
                  fontSize: 9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
