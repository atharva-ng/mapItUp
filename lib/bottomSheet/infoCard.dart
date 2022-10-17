import 'package:flutter/material.dart';

class infoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(242,244,248,242),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //color: Colors.amber,
            
            child: Image.asset('assets/images/img.png',
              height: 238,
              width: 396,
              
            ),
          ),
          Container(   
            color: Color.fromARGB(255, 255, 255, 255), 
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:const <Widget>[
              Text('RED CHILLIES',
                style: TextStyle(
                fontSize:20,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold)
              ),
              Text('Closed || Opens 4:00 PM', 
                style: TextStyle(
                  fontSize:12,
                  color: Color.fromARGB(255, 222, 5, 5)
                )
              ),
              Text('Dine-In || Takeaway', 
                style: TextStyle(
                  fontSize:12,
                  color: Color.fromARGB(255, 7, 8, 7)
                )
              ),
            ],
          ),
          )
        ],
      ),
    );
  }
}
