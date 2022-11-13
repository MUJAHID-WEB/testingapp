import 'package:flutter/material.dart';

//we have used the BottomNavigationBar within a scaffold widget. This navigation contains three BottomNavigationBarItem widgets. Here, we have set the currentIndex to 0 that select an item which is in green color. The onTap() function is used to change the selected item's index and then display a corresponding message.
//
//BottomNavigationBar constructor Null safety
// BottomNavigationBar(
// {Key? key,
// required List<BottomNavigationBarItem> items,
// ValueChanged<int>? onTap,
// int currentIndex = 0,
// double? elevation,
// BottomNavigationBarType? type,
// Color? fixedColor,
// Color? backgroundColor,
// double iconSize = 24.0,
// Color? selectedItemColor,
// Color? unselectedItemColor,
// IconThemeData? selectedIconTheme,
// IconThemeData? unselectedIconTheme,
// double selectedFontSize = 14.0,
// double unselectedFontSize = 12.0,
// TextStyle? selectedLabelStyle,
// TextStyle? unselectedLabelStyle,
// bool? showSelectedLabels,
// bool? showUnselectedLabels,
// MouseCursor? mouseCursor,
// bool? enableFeedback,
// BottomNavigationBarLandscapeLayout? landscapeLayout}
// )
//
//_AssertionError ('package:flutter/src/material/bottomnavigationbar.dart': Failed assertion: line 199 pos 9: 'items.every((BottomNavigationBarItem item) => item.label != null)': Every item must have a non-null label)
//Error is solved by showSelectedLabels: true, showUnselectedLabels: true, and label name
class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
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
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.green),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 2),
    );
  }
}

//items: It defines the list to display within the bottom navigation bar. It uses argument BottomNavigationBarItem that contains sup-properties given below:

// const BottomNavigationBarItem({  
//     @required this.icon,  
//     this.title,  
//     Widget activeIcon,  
//     this.backgroundColor,  
//   })   
// currentIndex: It determines the current active bottom navigation bar item on the screen.

// onTap: It is called when we tapped one of the items on the screen.

// iconSize: It is used to specify the size of all bottom navigation item icons.

// fixedColor: It is used to set the color of the selected item. If we have not set a color to the icon or title, it will be shown.

// type: It determines the layout and behavior of a bottom navigation bar. It behaves in two different ways that are: fixed and shifting. If it is null, it will use fixed. Otherwise, it will use shifting where we can see an animation when we click a button.