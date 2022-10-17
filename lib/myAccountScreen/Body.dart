import 'package:navi/myAccountScreen/profileMenuCard.dart';
import 'Profilepic.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 237, 47, 5),
      child: Stack(
        children: [
          Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(16, 49, 0, 0),
              child: const Text(
                "Account",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none),
              )),
          Container(
            //color: Colors.white,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.fromLTRB(0, 247, 0, 0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.white,
            ),
          ),
          Column(
            children: <Widget>[
              profilePic(),
              ProfileMenuCard(
                text: "Settings",
                //icon:
                press: () {},
              ),
              ProfileMenuCard(
                text: "About",
                //icon:
                press: () {},
              ),
              ProfileMenuCard(
                text: "Help",
                //icon:
                press: () {},
              ),
              ProfileMenuCard(
                text: "Feedback",
                //icon:
                press: () {},
              ),
              ProfileMenuCard(
                text: "Logout",
                //icon:
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
