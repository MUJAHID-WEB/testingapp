import 'package:flutter/material.dart';

//            Container({Key key,
//            AlignmentGeometry alignment,   //used to set the position of the child within the container. Flutter allows the user to align its element in various ways such as center, bottom, bottom center, topLeft, centerRight, left, right, and many more.
//
//            EdgeInsetsGeometry padding,  //used to set the distance between the border of the container (all four directions) and its child widget. We can observe this by seeing the space between the container and the child widget.
//
// EdgeInsetsGeometry margin,  //margin is used to surround the empty space around the container. We can observe this by seeing white space around the container. Suppose we have used the EdgeInsets.all(25) that set the equal margin in all four directions,
//
//            Color color,   //used to set the background color of the text. It also changes the background color of the entire container.
//
//            double width,   //used to set the container's height and width according to our needs. By default, the container always takes the space based on its child widget.
//
//            double height,
//
//            Decoration decoration,   //allows the developer to add decoration on the widget. It decorates or paint the widget behind the child. If we want to decorate or paint in front of a child, we need to use the forgroundDecoration parameter. The below image explains the difference between them where the foregroundDecoration covers the child and decoration paint behind the child. The decoration property supported many parameters, such as color, gradient, background image, border, shadow, etc. It is to make sure that we can either use the color property in a container or decoration, but not in both.
//
//            Decoration foregroundDecoration, //allows the developer to add decoration on the widget. It decorates or paint the widget behind the child. If we want to decorate or paint in front of a child, we need to use the forgroundDecoration parameter.
//decoration property supported many parameters, such as color, gradient, background image, border, shadow, etc. It is to make sure that we can either use the color property in a container or decoration, but not in both.
//
//            BoxConstraints constraints, // used when we want to add additional constraints to the child. It contains various constructors, such as tight, loose, expand, etc.
//
//            Widget child,    //This property is used to store the child widget of the container. Suppose we have taken a Text widget as its child widget
//
//            Clip clipBehavior: Clip.none //This property takes in Clip enum as the object. This decides whether the content inside the container will be clipped or not.
//
//The transform property allows developers to rotate the container. It can rotate the container in any direction, i.e., change the container coordinate in the parent widget.
//
//constraints: This property is used when we want to add additional constraints to the child. It contains various constructors, such as tight, loose, expand, etc. Let's see how to use these constructors in our app:
//tight: If we use size property in this, it will give fixed value to the child.
//expand: Here, we can choose the height, width, or both values to the child.
//            });

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Container"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://s3.o7planning.com/images/tom-and-jerry.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.black, width: 10),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.brown,
                    offset: Offset(15.0, 20.0),
                  ),
                ],
              ),
              constraints: const BoxConstraints(maxHeight: 800),
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(35),
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.1),
              child: const Text("Hello! We are in the container widget!!",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Column(
              children: [
                Container(
                  width: 350,
                  height: 70,
                  transform: Matrix4.rotationZ(0.1),
                  margin: EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),

//Text is a widget in Flutter that allows us to display a string of text with a single line in our application.

// const Text(String data,{
//     Key key,
//     TextStyle style,  //the most common property of this widget that allows developers to styling their text. It can do styling by specifying the foreground and background color, font size, font weight, letter and word spacing, locale, shadows, etc.
//foreground:	It determines the paint as a foreground for the text.
// background:	It determines the paint as a background for the text.
// fontWeight:	It determines the thickness of the text.
// fontSize:	It determines the size of the text.
// fontFamily:	It is used to specify the typeface for the font. For this, we need to download a typeface file in our project, and then keep this file into the assets/font folder. Finally, config the pubspec.yaml file to use it in the project.
// fontStyle:	It is used to style the font either in bold or italic form.
// Color:	It is used to determine the color of the text.
// letterSpacing:	It is used to determine the distance between the characters of the text.
// wordSpacing:	It is used to specify the distance between two words of the text.
// shadows:	It is used to paint underneath the text.
// decoration:	We use this to decorate text using the three parameters: decoration, decorationColor, decorationStyle. The decoration determines the location, decorationColor specify the color, decorationStyle determine the shape.
//
//     StrutStyle strutStyle,
//
//     TextAlign textAlign,   //used to specify how our text is aligned horizontally. It also controls the text location.
//
//     TextDirection textDirection,  // used to determine how textAlign values control the layout of our text. Usually, we write text from left to right, but we can change it using this parameter.
//
//     TextOverflow overflow,  //It is used to determine when the text will not fit in the available space. It means we have specified more text than the available space.
//
//     bool softWrap,  //used to determine whether or not to show all text widget content when there is not enough space available. If it is true, it will show all content. Otherwise, it will not show all content.
//
//     double textScaleFactor,  //used to determine the scaling to the text displayed by the Text widget. Suppose we have specified the text scale factor as 1.5, then our text will be 50 percent larger than the specified font size.
//
//     int maxLines,  //used to determine the maximum number of lines displayed in the text widget.
//
//     String semanticsLabel,
//     TextWidthBasis textWidthBasis,  //used to control how the text width is defined.
//
//     TextHeightBehavior textHeightBehavior  //used to control how the paragraph appears between the first line and descent of the last line.
//
//     }
// )
                  child: const Text(
                    'My Text',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 8,
                        wordSpacing: 15,
                        shadows: [
                          Shadow(
                              color: Colors.blue,
                              offset: Offset(5, 3),
                              blurRadius: 20)
                        ]),
                  ),
                ),
                Container(
                  width: 350,
                  height: 100,
                  transform: Matrix4.rotationZ(0.1),
                  margin: EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),

//RichText is a very useful widget in Flutter, which is used for displaying a paragraph of text on the UI with multiple styles. Inside the widget, we can have different styles by giving it a tree of TextSpan widgets. Each TextSpan can set its own style for overriding the default style.
//RichText(
// {Key key, //Controls how one widget replaces another widget in the tree.
//
// @required InlineSpan text,
//
//runtimeType: A representation of the runtime type of the object.
//
// TextAlign textAlign: TextAlign.start, //How the text should be aligned horizontally.
//
//local: This property takes in Locale class as the object. It controls the font used for the text depending on the language used.
//
// TextDirection textDirection, //This property takes in TextDirection class as the object to decide the direction of the text. It can be either from left-to-right or right-to-left.
//
// bool softWrap: true, //This property takes in a boolean value as the object. If it is set to false the gulphs in the text become wider.
//
// TextOverflow overflow: //TextOverflow enum is the object given to its class it controls the text in case of overflow.
//
// TextOverflow.clip,
// double textScaleFactor: 1.0, //This property is taken in a double value as the object to determine the relative size of the font.
//
// int maxLines, //The maxLines property takes in an int value as the object. It controls the maximum number of lines that can be there for the text to expand and wrap.
//
// Locale locale,
// StrutStyle strutStyle,
// TextWidthBasis textWidthBasis: TextWidthBasis.parent, //TextWidthBasis enum is the object of this property. It controls the width of a single line of text being measured.
//
// TextHeightBehavior textHeightBehavior,  //TextHeightBehavior class is the object given to this property. It controls how the text will be highlighted.
//
                  child: RichText(
                    // Controls visual overflow
                    overflow: TextOverflow.clip,

                    // Controls how the text should be aligned horizontally
                    textAlign: TextAlign.end,

                    // Control the text direction
                    textDirection: TextDirection.rtl,

                    // Whether the text should break at soft line breaks
                    softWrap: true,

                    // Maximum number of lines for the text to span
                    maxLines: 1,

                    // The number of font pixels for each logical pixel
                    textScaleFactor: 1,
                    text: const TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          TextSpan(
                              text: ' Sign up',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 20)),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0),
                              child: Icon(Icons.add, color: Colors.red),
                            ),
                          ),
                          TextSpan(
                              text: ' to add', style: TextStyle(fontSize: 20)),
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
