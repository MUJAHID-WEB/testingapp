//constructor and properties of the Scaffold widget class
// const Scaffold({
//   Key key,
//   this.appBar,  //It is a horizontal bar that is mainly displayed at the top of the Scaffold widget. It is the main part of the Scaffold widget and displays at the top of the screen. Without this property, the Scaffold widget is incomplete. It uses the appBar widget that itself contains various properties like elevation, title, brightness, etc.
//
//   this.body, //It is the other primary and required property of this widget, which will display the main content in the Scaffold.
//
//   this.floatingActionButton,  // It is a button displayed at the bottom right corner and floating above the body.
//
//   this.floatingActionButtonLocation, //By default, it is positioned at the bottom right corner of the screen. It is used to determine the position of the floatingActionButton. It contains many predefined constants, such as centerDocked, centerFloat, endDocked, endFloat, etc.
//
//   this.persistentFooterButtons, //It is a list of buttons that are displayed at the bottom of the Scaffold widget.
//
//   this.drawer, //It is a slider panel that is displayed at the side of the body. Usually, it is hidden on the mobile devices, but the user can swipe it left to right or right to left to access the drawer menu.
//
//   this.endDrawer, //It is similar to a drawer property, but they are displayed at the right side of the screen by default. It can be swiped right to left or left to right.
//endDrawerEnableOpenGesture: Again this property takes in a boolean value as the object to determine whether the drag gesture will open the endDrawer or not.
//
//   this.bottomNavigationBar, //This property is like a menu that displays a navigation bar at the bottom of the Scaffold.
//
//   this.bottomSheet, //This property takes in a widget  (final) as the object to display it at the bottom of the screen. //showModalBottomSheet //
//
//   this.floatingActionButtonAnimator, //used to provide animation to move floatingActionButton.
//
//   this.backgroundColor, //This property is used to set the background color of the whole Scaffold widget.
//
//   this.resizeToAvoidBottomPadding = true,
//   this.resizeToAvoidBottomInset, //If it is true, the body and the Scaffold's floating widgets should adjust their size themselves to avoid the onscreen keyboard. The bottom property defines the onscreen keyboard height.
//
//   this.primary = true, //It is used to tell whether the Scaffold will be displayed at the top of the screen or not.
//
//   this.drawerDragStartBehavior = DragStartBehavior.start, //It handled the drag start behavior. If we set it as DragStartBehavior.start, the drag moves the switch from on to off.
//drawerEdgeDragWidth: This determines the area under which a swipe or a drag will result in the opening of the drawer. And it takes in a double as the object.
//
//drawerEnableOpenGesture: This property holds in a boolean value as the object to determine the drag gesture will open the drawer or not, by default it is set to true.
//
//   this.extendBody = false, //The extendBody property takes in a boolean as the object. By default, this property is always false but it must not be null. If it is set to true in the presence of a bottomNavigationBar or persistentFooterButtons, then the height of these is added to the body and they are shifted beneath the body.
//extendBodyBehindAppBar:  This property also takes in a boolean as the object. By default, this property is always false but it must not be null. If it is set to true the appBar instead of being on the body is extended above it and its height is added to the body. This property is used when the color of the appBar is not fully opaque.
//
//   this.drawerScrimColor, //used to define the color for the primary content while a drawer is open.
//
//   this.primary = true, //to tell whether the Scaffold will be displayed or not.
// })

import 'package:challanges/bottomappbar.dart';
import 'package:challanges/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Scaffoldt extends StatefulWidget {
  const Scaffoldt({super.key});

  @override
  State<Scaffoldt> createState() => _ScaffoldtState();
}

class _ScaffoldtState extends State<Scaffoldt> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'My App'), //title property which is taking Text widget as a parameter. The title is followed by the action property
        actions: <Widget>[
          //takes in a list of widgets as a parameter to be displayed after the title if the AppBar is a row. In this case, we can see the two icons namely the comment and setting. These two icons are  IconsButton widgets, utilizing three properties namely icon, tooltip, and onPressed function.
          IconButton(
            icon: const Icon(Icons
                .comment), //The icon property takes in a string as a parameter which is the name of the specific icon.
            tooltip:
                'Comment Icon', //tooltip property also takes in a string as the parameter which is displayed in a floating label, while hovering with the mouse or on the long-press
            onPressed:
                () {}, // The onPressed function is not specified in any of the IconButton so it is null.
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        titleSpacing:
            00.0, //takes in double as a parameter and in this case, it is set to 00.0 to keep text close together
        centerTitle:
            true, //takes in boolean as a parameter and is set to true here
        toolbarHeight:
            60.2, //takes in double as a parameter. This property provides a shadow underneath the AppBar which in turn makes it look elevated.
        toolbarOpacity:
            0.9, // responsible for controlling the opacity of the toolbar portion of the appBar. It takes a double value as the parameter where 1.0 is the maximum opacity and 0.0 is full transparency.
        shape: const RoundedRectangleBorder(
            //it is utilized to give a different shape to the AppBar by modifying the border of the AppBar. Inside the shape property we have used the borderRadius to make the bottom edges of the AppBar rounded by an angle of 25 degrees
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
        elevation:
            50.0, //it defines the z-coordinates at which the AppBar is to be placed with respect to its parent. It also takes in double as a parameter.
        // leading: IconButton(
        //leading property which takes in a widget as a parameter, to be displayed before the title in the AppBar. In this case, the leading is also an IconButton, which displays a menu icon. The onPressed property is not mentioned and the tooltip property is given a parameter of string ‘Menu Icon’.
        //   icon: const Icon(Icons.menu),
        //   tooltip: 'Menu Icon',
        //   onPressed: () {},
        // ),

        backgroundColor:
            Colors.orange, //controls the background color of the AppBar
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      //body is the other primary and required property of this widget, which will display the main content in the Scaffold. It signifies the place below the appBar and behind the floatingActionButton & drawer. The widgets inside the body are positioned at the top-left of the available space by default.
      body: Center(
        //This text is aligned in the center of the page by using the Center widget.
        // child: Text(
        //   'This is My App',
        //   style: TextStyle(
        //     color: Colors.amber,
        //     fontSize: 30.0,
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Show Model BottomSheet'),
              onPressed: () {
                //A modal bottom sheet is a widget, which is a core building block of Flutter apps, in Material Design.

                // Modal bottom sheets in Flutter are used to display supplementary content while restricting the user from interacting with the app’s main content. As the name suggests, a bottom sheet is positioned at the bottom of the screen.
                //
                //           Future<T?> showModalBottomSheet<T>(
                //          {required BuildContext context,
                //          required WidgetBuilder builder,
                //          Color? backgroundColor,
                //          double? elevation,
                //          ShapeBorder? shape,
                //          Clip? clipBehavior, //The content will be clipped according to this option.
                //
                //          Color? barrierColor,
                //          bool isScrollControlled = false,
                //          bool useRootNavigator = false, //The useRootNavigator parameter ensures that the root navigator is used to display the BottomSheet when set to true.
                //          bool isDismissible = true, //Specifies whether the user can dismiss modal bottom sheet by tapping on the scrim.
                //          bool enableDrag = true, //The enableDrag parameter specifies whether the bottom sheet can be dragged up and down and dismissed by swiping downwards.
                //          RouteSettings? routeSettings, //Sets the RouteSettings of the modal bottom sheet.
                //          AnimationController? transitionAnimationController}
                // )

//   The showModalBottomSheet has two required properties: BuildContext and WidgetBuilder.

// BuildContext takes the context argument, which is used to look up the Navigator and the theme for the bottom sheet. This is used when the method is called
// The WidgetBuilder is a function that takes the current context — which, in this case, is the builder — and returns a widget. This widget is — you guessed it — a bottom sheet widget
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  // color is applied to main screen when modal bottom screen is displayed
                  barrierColor: Colors.transparent,
                  //background color for modal bottom screen
                  backgroundColor: Colors.amber,
                  //elevates modal bottom screen
                  elevation: 10, //Elevates the snackbar by increasing shadow.
                  // gives rounded corner to modal bottom screen
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  builder: (context) {
                    //A builder for the contents of the sheet
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        children: const [
                          TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(labelText: 'Name'),
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(labelText: 'Age'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          // ElevatedButton(onPressed: (){}),
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text('Share'),
                          ),
                          ListTile(
                            leading: Icon(Icons.copy),
                            title: Text('Copy Link'),
                          ),
                          ListTile(
                            leading: Icon(Icons.edit),
                            title: Text('Edit'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              // Get.bottomSheet(
              //   Container(
              //       height: 150,
              //       color: Colors.greenAccent,
              //       child: Column(
              //         children: const [
              //           Text('Hii 1', textScaleFactor: 2),
              //           Text('Hii 2', textScaleFactor: 2),
              //           Text('Hii 3', textScaleFactor: 2),
              //           Text('Hii 4', textScaleFactor: 2),
              //         ],
              //       )),
              //   barrierColor: Colors.red[50],
              //   isDismissible: false,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(35),
              //       side: const BorderSide(width: 5, color: Colors.black)),
              //   enableDrag: false,
              // );
            ),
          ],
        ),
      ),
      //Drawer//
      drawer: Drawer(
        //drawer: It is a slider panel that is displayed at the side of the body. Usually, it is hidden on the mobile devices, but the user can swipe it left to right or right to left to access the drawer menu. It uses the Drawer widget properties slides in a horizontal direction from the Scaffold edge to show navigation links in the application. An appropriate icon for the drawer is set automatically in an appBar property. The gesture is also set automatically to open the drawer.
        elevation: 10.0,
        child: Column(children: const <Widget>[
          UserAccountsDrawerHeader(
            //DrawerHeader is used to modify the header of the panel. In header we can display icon or details of user according to the application
            accountName: Text('Mujahid'),
            accountEmail: Text('mujahid30390@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('M'),
            ),
          ),
          ListTile(
            //ListTile to add the list items in the menu.
            title: Text('Inbox'),
            leading: Icon(Icons.mail),
          ),
          Divider(
            height: 0.2,
          ),
          ListTile(
            title: Text('Primary'),
            leading: Icon(Icons.inbox),
          ),
          ListTile(
            title: Text('Social'),
            leading: Icon(Icons.people),
          ),
          ListTile(
            title: Text('Promotions'),
            leading: Icon(Icons.local_offer),
          ),
        ]),
      ),

      //floatingActionButton//
      floatingActionButton: FloatingActionButton(
          //button displayed at the bottom right corner and floating above the body. It is a circular icon button that floats over the content of a screen at a fixed place to promote a primary action in the application. While scrolling the page, its position cannot be changed.
          elevation: 20.0,
          child: Icon(Icons.add),
          onPressed: (() {})),
      //floatingActionButtonLocation//
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //backgroundColor//
      backgroundColor: Colors
          .white54, //This property is used to set the background color of the whole Scaffold widget.
      //primary//
      primary:
          true, //used to tell whether the Scaffold will be displayed at the top of the screen or not. Its default value is true that means the height of the appBar extended by the height of the screen's status bar.
      //
      //persistentFooterButtons //
      persistentFooterButtons: <Widget>[
        //list of buttons that are displayed at the bottom of the Scaffold widget. These property items are always visible; even we have scroll the body of the Scaffold. It is always wrapped in a ButtonBar widget. They are rendered below the body but above the bottomNavigationBar.
        // ElevatedButton

        //  List of replaced classes:
        // FlatButton → TextButton
        // RaisedButton → ElevatedButton
        // OutlineButton → OutlinedButton
        // ButtonTheme → TextButtonTheme, ElevatedButtonTheme, OutlineButtonTheme
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
                textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 10, color: Colors.white))),
            onPressed: () {},
            child: const Text('Enabled Button')),
        TextButton(
          onPressed: () {},
          child: const Icon(
            Icons.clear,
            color: Colors.white,
          ),
        )
      ],
      //
      // bottomNavigationBar //
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // title: Text('Home'),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                //title: Text('Search'),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
              //title: Text('Profile'),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType
              .shifting, //If type is null then BottomNavigationBarType.fixed is used when there are two or three items, BottomNavigationBarType.shifting otherwise.
          showSelectedLabels:
              true, //If showSelectedLabels is null, BottomNavigationBarThemeData.showSelectedLabels is used. If BottomNavigationBarThemeData.showSelectedLabels is null, then showSelectedLabels defaults to true.
          showUnselectedLabels:
              false, //If showUnselectedLabels is null, BottomNavigationBarThemeData.showUnselectedLabels is used. If BottomNavigationBarThemeData.showSelectedLabels is null, then showUnselectedLabels defaults to true when type is BottomNavigationBarType.fixed and false when type is BottomNavigationBarType.shifting.
          currentIndex: _selectedIndex, //up to override
          selectedItemColor: Colors.black,
          iconSize: 25,
          onTap: _onItemTapped, //up to override
          elevation: 2),

      //BottomAppBar//
      //
      // bottomNavigationBar: BottomAppBar(
      //A container that is typically used with Scaffold.bottomNavigationBar, and can have a notch along the top that makes room for an overlapping FloatingActionButton.
      //
      //Typically used with a Scaffold and a FloatingActionButton/ find in bottomappbar.dart for details
      //   color: Colors.blue,
      //   child: IconTheme(
      //     data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
      //     child: Row(
      //       children: <Widget>[
      //         IconButton(
      //           tooltip: 'Open navigation menu',
      //           icon: const Icon(Icons.menu),
      //           onPressed: () {},
      //         ),
      //         IconButton(
      //           tooltip: 'Search',
      //           icon: const Icon(Icons.search),
      //           onPressed: () {},
      //         ),
      //         IconButton(
      //           tooltip: 'Favorite',
      //           icon: const Icon(Icons.favorite),
      //           onPressed: () {},
      //         ),
      //       ],
      //     ),
      //   ),
      // )

      //endDrawer //
      // The endDrawer is the panel displayed to the side of the body (Scaffold Widget). It is generally hidden in mobile devices. We can open it by swiping in from right to left, or we can customise it to open on-press of an icon or a button. This widget is similar to the already present Drawer widget in flutter except for the fact the Drawer by default open from left-to-right and the endDrawer by default opens from right-to-left. However, this direction can be changed by using textDirection property.

      //       Properties of endDrawer :
      // child: This property takes in a widget as a parameter to show below endDrawer widget in the tree.
      // hashCode: This property takes an int as the parameter. The hash code represents the state of the object that effects operator== comparison.
      // elevation: This property takes in a double value as a parameter to control the z-coordinate at which to place this drawer relative to its parent.
      // semanticLabel: This property takes in a string value a the parameter to create the semantic label of the dialog used by accessibility frameworks to announce screen transitions when the drawer is opened and closed.
      endDrawer: Drawer(
        elevation: 20.0,
        semanticLabel: 'endDrawer',
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text("GFG item $index"),
            trailing: Icon(Icons.done),
          );
        }),
      ),
    );
  }
}

// AppBar(  //Constructor of AppBar class:

// {Key key,
// Widget leading,
// bool automaticallyImplyLeading: true,
// Widget title,
// List<Widget> actions,
// double elevation,
// Color shadowColor,
// ShapeBorder shape,
// Color backgroundColor,
// Brightness brightness,
// IconThemeData iconTheme,
// IconThemeData actionsIconTheme,
// TextTheme textTheme,
// ...}
// )
