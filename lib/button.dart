import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

//Buttons are the graphical control element that provides a user to trigger an event such as taking actions, making choices, searching things, and many more. They can be placed anywhere in our UI like dialogs, forms, cards, toolbars, etc.
//
// Flat Button → TextButton //TextButton is used to create a button containing a text with the idea of creating a flat button and an elevation of 0 by default. But in fact, you can customize its style by using style property.
//
// Raised Button → ElevatedButton //ElevatedButton is used to create a button with an elevation greater than 0 by default.
//The ElevatedButton class is created to replace the RaisedButton class (marked outdated since October 2020). This is one of the efforts of Flutter development team to simplify and make the Flutter API consistent.
//
// Floating Button
//
// Drop Down Button  //The DropDownButton is a widget that we can use to select one unique value from a set of values. It lets the user select one value from a number of items. The default value shows the currently selected value. We can even include a down arrow icon on the list. On clicking the DropDownButton it opens a list  of items, from which the user can select the desired option.
//
// Icon Button  //IconButton is a button with an icon which the user can click on to perform an action
//
// Inkwell Button //responds to the touch action as performed by the user. Inkwell will respond when the user clicks the button. There are so many gestures like double-tap, long press, tap down, etc. Below are the so many properties of this widget. We can set the radius of the inkwell widget using radius and also border-radius using borderRadius. We can give the splash color using splashColor and can do a lot of things.
//
// PopupMenu Button //It is a button that displays the menu when it is pressed and then calls the onSelected method the menu is dismissed. It is because the item from the multiple options is selected. This button contains a text and an image. It will mainly use with Settings menu to list all options. It helps in making a great user experience.
//
// Outline Button
// OutlineButton → OutlinedButton //Outlined Widgets are material design components that are used to give outlines to buttons. It is in no way different from text buttons except for the special feature of the border this class provides. These contain nonprimary actions for the apps. It is introduced in version 1.22 of flutter. Outlined buttons have child as their label with text widgets or icons widgets as the child widget to this parent class. You can set the styling of outlined buttons using ButtonStyl
//
// ButtonTheme → TextButtonTheme, ElevatedButtonTheme, OutlineButtonTheme
class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  // Initial Selected Value for DropDownButton
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  // definition of the dialog
  // box when value is selected
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert!!"),
          content: Text("You are awesome!"),
          actions: [
            MaterialButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        actions: [
//PopupMenuButton
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // PopupMenuItem 1
              PopupMenuItem(
                value: 1,
                // row with 2 children
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Get The App")
                  ],
                ),
              ),
              // PopupMenuItem 2
              PopupMenuItem(
                value: 2,
                // row with two children
                child: Row(
                  children: [
                    Icon(Icons.chrome_reader_mode),
                    SizedBox(
                      width: 10,
                    ),
                    Text("About")
                  ],
                ),
              ),
            ],
            offset: Offset(0, 100),
            color: Colors.grey,
            elevation: 2,
            // on selected we show the dialog box
            onSelected: (value) {
              // if value 1 show dialog
              if (value == 1) {
                _showDialog(context);
                // if value 2 show dialog
              } else if (value == 2) {
                _showDialog(context);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: ButtonBar(
          // Flutter provides the flexibility to arrange the buttons in a bar or a row. ButtonBar widget contains three properties: alignment, children, and mainAxisSize.
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
//TextButton
            TextButton(
//As of May 2021 the FlatButton class in flutter is deprecated. TextButton class should be used instead.
//
// const TextButton({Key key,
//    @required Widget child,
//    @required VoidCallback onPressed,
//    VoidCallback onLongPress,
//    ButtonStyle style,
//    FocusNode focusNode,
//    bool autofocus: false,
//    Clip clipBehavior: Clip.none
//  }
// )
              child: Text(
                'SignUp',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {},
            ),
            TextButton(
                child: Text('TextButton With Background and Foreground Color'),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.amberAccent),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                )),
// const ButtonStyle(
//     {MaterialStateProperty<TextStyle> textStyle,
//     MaterialStateProperty<Color> backgroundColor,
//     MaterialStateProperty<Color> foregroundColor,
//     MaterialStateProperty<Color> overlayColor,
//     MaterialStateProperty<Color> shadowColor,
//     MaterialStateProperty<double> elevation,
//     MaterialStateProperty<EdgeInsetsGeometry> padding,
//     MaterialStateProperty<Size> minimumSize,
//     MaterialStateProperty<BorderSide> side,
//     MaterialStateProperty<OutlinedBorder> shape,
//     MaterialStateProperty<MouseCursor> mouseCursor,
//     VisualDensity visualDensity,
//     MaterialTapTargetSize tapTargetSize,
//     Duration animationDuration,
//     bool enableFeedback}
// )
            TextButton(
                child: Text("TextButton 2"),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.black26;
                      }
                      return Colors.cyan;
                    }),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed) ||
                            states.contains(MaterialState.disabled)) {
                          return 0;
                        }
                        return 10;
                      },
                    ))),
            TextButton(
                child: Text("TextButton 1"),
                onPressed: () {},
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.blue; // Use the component's default.
                }), foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.yellow;
                    }
                    return Colors.orange; // Use the component's default.
                  },
                ))),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.settings),
              label: Text('Setting'),
            ),
            //By assigning Row object to the child property, you can create a more complex TextButton, such as both Icon and Text included.
            // 2 Icons and 1 Text
            TextButton(
              child: Row(
                children: [
                  Icon(Icons.directions_bus),
                  Icon(Icons.train),
                  SizedBox(width: 5),
                  Text("Transportation")
                ],
              ),
              onPressed: () {},
            ),
//IconButton
            IconButton(
// const IconButton (
//     {Key key,
//     double iconSize: 24.0,
//     VisualDensity visualDensity,
//     EdgeInsetsGeometry padding: const EdgeInsets.all(8.0),
//     AlignmentGeometry alignment: Alignment.center,
//     double splashRadius,
//     @required Widget icon,
//     Color color,
//     Color focusColor,
//     Color hoverColor,
//     Color highlightColor,
//     Color splashColor,
//     Color disabledColor,
//     @required VoidCallback onPressed,
//     MouseCursor mouseCursor: SystemMouseCursors.click,
//     FocusNode focusNode,
//     bool autofocus: false,
//     String tooltip,
//     bool enableFeedback: true,
//     BoxConstraints constraints}
// )
              icon: Icon(Icons.directions_bus),
              onPressed: () {
                print("Pressed");
              },
              iconSize: 50,
              color: Colors.green,
              splashRadius: 100,
              splashColor: Colors.lightGreenAccent,
              highlightColor: Colors.red,
              tooltip: "Bus Direction",
            ),
//DropDownButton
// DropdownButton(
// {Key key,
// @required List<DropdownMenuItem<T>> items,
// DropdownButtonBuilder selectedItemBuilder,
// T value,
// Widget hint,
// Widget disabledHint,
// @required ValueChanged<T> onChanged,
// VoidCallback onTap,
// int elevation: 8, use elevation property to elevate the dropdown menu/list.
// TextStyle style,
// Widget underline,
// Widget icon,
// Color iconDisabledColor,
// Color iconEnabledColor,
// double iconSize: 24.0,
// bool isDense: false,
// bool isExpanded: false,
// double itemHeight: kMinInteractiveDimension,
// Color focusColor,
// FocusNode focusNode,
// bool autofocus: false,
// Color dropdownColor
// }
// )
// Properties of DropDownButton:
// items: We use this property to define various items that are to be defined in our dropdown menu/list. It is a list of items that users can select
// value: Value is the currently selected item.
// style: We use the style property to style our text in the dropdown menu/list like color, fontsize, fontweight, etc.
// alignment: Alignment defines how the hint or selected item is positioned within the button.
// elevation: We use elevation property to elevate the dropdown menu/list.
// icon: This property is used to display an icon to the dropdown button.
// iconSize: This property is used to define the size of the icon.
// iconDisabledColor: This property is used to set icon color when the dropdown button is disabled.
// iconEnabledColor: This property is used to set icon color when the dropdown button is enabled.
// dropdownColor: This property is used to display the background color of the dropdown.
// isDense: This property reduces the height of the button.
// isExpanded: This property is used to expand the dropdown button to full width.
// selectedItemBuilder: When the user selects an option from the dropdown list it displays the option on the button. If we want to display some other text instead of the selected option on the button we will use selectedItemBuilder.
// hint: We can display one of the options from the dropdown list on the button or we can set our desired text by default using the hint.
// disabledHint: This property is used to display desired text when the dropdown button is disabled.
            DropdownButton(
              // Initial Selected Value for DropDownButton
              // String dropdownvalue = 'Item 1';
              //
              // List of items in our dropdown menu
              // var items = [
              //   'Item 1',
              //   'Item 2',
              //   'Item 3',
              //   'Item 4',
              //   'Item 5',
              // ];
              // Initial Value
              value: dropdownvalue, //Value is the currently selected item.

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                //We use this property to define various items that are to be defined in our dropdown menu/list. It is a list of items that users can select
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
//Elevated Button
// Methods Provided in an Elevated Button
// createElement(): create a StatefulElement to manage button’s location in the widget tree.
// createState(): Creates the mutable state for this widget at a given location in the tree.
// build(BuildContext context): Describes the part of the user interface
// createElement(): creates a StatelessElement to manage this widget’s location in the tree.
// debugDescribeChildren(): Returns a list of DiagnosticsNode objects describing this node’s children
// debugFillProperties(): Add additional properties associated with the node
// noSuchMethod(): Invoked when a non-existent method or property is accessed
// toDiagnosticsNode(): Returns a debug representation of the object that is used by debugging tools
// toString(): A string representation of this object
// toStringDeep(): Returns a string representation of this node and its descendants.
// toStringShallow(): Returns a one-line detailed description of the object
// toStringShort(): A short, textual description of this widget.
            ElevatedButton(
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.normal),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                side: BorderSide(color: Colors.yellow, width: 3),
                shadowColor: Colors.lightBlue,
              ),
              onPressed: () {},
            ),
            ElevatedButton(
                child: Text("Custom ElevatedButton"),
                onPressed: () {},
                //     onPressed: () => Navigator.of(context)
                // .push(MaterialPageRoute(builder: (context) => const NewScreen())),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed) ||
                            states.contains(MaterialState.disabled)) {
                          return 0;
                        }
                        return 10;
                      },
                    ))),
            ElevatedButton.icon(
// ElevatedButton.icon({
//   Key? key,
//   required VoidCallback? onPressed,
//   VoidCallback? onLongPress,
//   ValueChanged<bool>? onHover,
//   ValueChanged<bool>? onFocusChange,
//   ButtonStyle? style,
//   FocusNode? focusNode,
//   bool? autofocus,
//   Clip? clipBehavior,
//   required Widget icon,
//   required Widget label
// })
                icon: Icon(Icons.settings),
                label: Text("Settings"),
                onPressed: () {},
                // Use ElevatedButton.styleFrom static method
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.redAccent,
                    elevation: 10,
                    minimumSize: Size(100, 80))),
//InkWell
// Create a Container and wrap it with the InkWell widget.
// When InkWell is tapped, it will display “InkWell Tapped” on the screen.
// When InkWell is LongPressed, it will display “InkWell Long Pressed” on the screen.
            InkWell(
              onTap: () {
                setState(() {
                  //inkwell='Inkwell Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  //inkwell='InkWell Long Pressed';
                });
              },
              child: Container(
                  color: Colors.green,
                  width: 120,
                  height: 50,
                  margin: EdgeInsets.all(15),
                  child: Center(
                      child: Text(
                    'Inkwell',
                    textScaleFactor: 2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
            ),
//OutlinedButton
// const OutlinedButton({
//     Key key,
//     @required VoidCallback onPressed,
//     VoidCallback onLongPress,
//     ButtonStyle style,
//     FocusNode focusNode,
//     bool autofocus = false,
//     Clip clipBehavior = Clip.none,
//     @required Widget child,
//   })
            OutlinedButton(
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                primary: Colors.white,
                textStyle: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
              onPressed: () {},
              // onPressed: () => Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => const NewScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
