import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class BoxHeader extends StatelessWidget {
  const BoxHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        width: 350,
        height: 160,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.pinkAccent,
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
                "Feeling Stressed 🤔",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
            ),
            const Text(
                "Find the best place to heal",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.normal
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Started",  // message
                      toastLength: Toast.LENGTH_SHORT, // length
                      gravity: ToastGravity.BOTTOM,    // location
                      timeInSecForIosWeb: 1               // duration
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5.0,
                  padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 25.0)
                ),
                child: const Text(
                    "Start now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                )
            )
          ],
        ),
      ),
    );
  }
}
