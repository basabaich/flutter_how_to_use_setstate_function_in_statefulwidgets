//
//File name: dice_roller.dart
//

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    //StatefulWidget
    //
    //
    //throw UnimplementedError();
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  //
  //
  void rollDice() {
    //...
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
      //All updates or changed parameters will be kept inside this "setState()"
      //so that they can be re-executed continuously.
      //This program will come to the "setState()" function & if any values
      //are found changed (like here the "activeDiceImage" variable value or
      //image got changed from dice-1 to dice-4), the program will scan all
      //other codes where ever there is "activeDiceImage" in this
      //"StatefulWidget" & will change the values there also. This process will
      //keep on running as long as the program is not exited.
    });
    //We are using setState() function which will re-execute "setState()"
    //continuously as longs as this application is run & not exited.
  }
  //
  //

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          //'assets/images/dice-1.png',
          activeDiceImage,
          //We will remove the line "assets/images/dice-1.png" here & will
          //use the predefined function pointer instead. this is where, it
          //takes different values and displays different images.
          //
          //
          width: 90,
        ), //image.asset
        TextButton(
          onPressed: rollDice,
          //Here "rollDice is a function which can pass a value"
          //
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20.0),
              foregroundColor: Colors.amber[900]),
          child: const Text('Roll Dice!'),
        ), //TextButton
      ],
    ); //Column
  }
}
