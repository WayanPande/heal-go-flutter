import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heal_go_flutter/components/profile_option_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void onClick(String title) {
    Fluttertoast.showToast(
        msg: title,  // message
        toastLength: Toast.LENGTH_SHORT, // length
        gravity: ToastGravity.BOTTOM,    // location
        timeInSecForIosWeb: 1               // duration
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage("https://avatars.dicebear.com/api/adventurer-neutral/joko.jpg")
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      const SizedBox(width: 15,),
                      const Expanded(
                        child: Text(
                          "I Wayan Pande Putra Yudha",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit)
                      )
                    ],
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Information",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 20,),
                            ProfileOptionButton(icon: Icons.book, title: "FAQ", onClick: onClick),
                            const SizedBox(height: 15,),
                            ProfileOptionButton(icon: Icons.star, title: "Rate Us", onClick: onClick),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Preference",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 20,),
                            ProfileOptionButton(icon: Icons.language, title: "Language", onClick: onClick),
                            const SizedBox(height: 15,),
                            ProfileOptionButton(icon: Icons.logout, title: "Logout", color: Colors.red, onClick: onClick),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      )
    );
  }
}
