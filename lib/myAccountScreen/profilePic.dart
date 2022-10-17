import 'package:flutter/material.dart';
import 'profileMenuCard.dart';

class profilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      margin: EdgeInsets.fromLTRB(16, 118, 16, 0),
      child: Stack(
        children: [
          Container(
            child: Card(
                child: SizedBox(
              width: 500,
              height: 208,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Julia Parker',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'julia@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
          ),

          // Container(
          //   margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          //   alignment: Alignment.center,
          //   child: const CircleAvatar(
          //     radius: 40,
          //     //backgroundImage: AssetImage" ",
          //   ),
          // ),
        ],
      ),
    );
  }
}
