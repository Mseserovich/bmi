import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0XFF1D1E33);
const bottomCardColor = Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableWidget(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 70.0,),
                        SizedBox(height: 15.0,),
                        Text('Male', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),)],
                    ),
                    colour: activeCardColor,
                    ),
                ),
            Expanded(
              child: ReusableWidget(
                cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.venus, size: 70.0,),
                        SizedBox(height: 15.0,),
                        Text('Female', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),)],
                    ),
                colour: activeCardColor),
            ),
      ],
            ),
          ),
          Expanded(
            child: ReusableWidget(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableWidget(colour: activeCardColor)),
                Expanded(child: ReusableWidget(colour: activeCardColor)),  
              ],
            ),
          ),
        Container(
          color: bottomCardColor,
          margin: EdgeInsets.only(top: 10.0),
          height: 55.0,)
        ],
      )
    );
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget ({required this.colour, this.cardChild});

  final Color colour;
   var cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
          ),
              );
  }
}

