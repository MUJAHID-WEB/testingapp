import 'package:flutter/material.dart';

//Row and column are the two essential widgets in Flutter that allows developers to align children horizontally and vertically according to our needs.
//Row(
// {Key key,
// MainAxisAlignment mainAxisAlignment: MainAxisAlignment.start,
// MainAxisSize mainAxisSize: MainAxisSize.max, //This property decides the size of main-axis by taking in MainAxisSize enum as the object.
//
// CrossAxisAlignment crossAxisAlignment: CrossAxisAlignment.center,
// TextDirection textDirection, //This property controls the text direction of the Row or Column widget, which can either be from left-to-right (by default) or right-to-left.
//
// VerticalDirection verticalDirection: VerticalDirection.down, //This property takes in VerticalDirection enum as the object to determine the order in which the children should be layered.
//
// TextBaseline textBaseline: TextBaseline.alphabetic, //This property is responsible for the alignment of the text in the Row or Column widget with respect to a baseline.

//runtimeType: This property tells the run-time type of the Row or Column widget.
//
//direction: This property holds as the Axis enum object to decide the direction used in the main axis. For Row and Column, it is fixed.
//
//clipBehaviour: This property holds Clip class as the object to decide whether the content on the Row or Column should be clipped or not.
//
// List<Widget> children: const <Widget>[]} //This property takes in List<Widget>, that is a list of widgets to display inside the Row or the Column widget.
// )
//
//Row widget arranges its children in a horizontal direction on the screen. In other words, it will expect child widgets in a horizontal array. If the child widgets need to fill the available horizontal space, we must wrap the children widgets in an Expanded widget.
//A row widget does not appear scrollable because it displays the widgets within the visible view.
//We can control how a row widget aligns its children based on our choice using the property crossAxisAlignment and mainAxisAlignment. The row's cross-axis will run vertically, and the main axis will run horizontally.
//
//start, end, center, spaceBetween, spaceAround, spaceEvenly
//
//
//widget arranges its children in a vertical direction on the screen. In other words, it will expect a vertical array of children widgets. If the child widgets need to fill the available vertical space, we must wrap the children widgets in an Expanded widget.
//We can also control how a column widget aligns its children using the property mainAxisAlignment and crossAxisAlignment. The column's cross-axis will run horizontally, and the main axis will run vertically.
class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Row n Column'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              //margin: EdgeInsets.all(12.0),
              //padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(8),
                color: Colors.blueGrey,
              ),
              child: Text(
                "React.js",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blueGrey,
              ),
              child: Text(
                "React.js",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
              ),
            ),

            //
            // Column in Row - Constructor Of Column Class:
            //Column(
            // {Key key,
            // MainAxisAlignment mainAxisAlignment: MainAxisAlignment.start,
            // MainAxisSize mainAxisSize: MainAxisSize.max,
            // CrossAxisAlignment crossAxisAlignment: CrossAxisAlignment.center,
            // TextDirection textDirection,
            // VerticalDirection verticalDirection: VerticalDirection.down,
            // TextBaseline textBaseline,
            // List<Widget> children: const <Widget>[]}
            // )
            //
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  child: Text(
                    "React.js",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
