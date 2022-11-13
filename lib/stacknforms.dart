import 'package:flutter/material.dart';

class StackForms extends StatefulWidget {
  const StackForms({super.key});

  @override
  State<StackForms> createState() => _StackFormsState();
}

class _StackFormsState extends State<StackForms> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  void _submit() {
    // you can write your
    // own code according to
    // whatever you want to submit;
  }
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack and Forms')),
      body: Column(
        children: [
          Center(
              child: Stack(
// The stack is a widget in Flutter that contains a list of widgets and positions them on top of the other. In other words, the stack allows developers to overlap multiple widgets into a single screen and renders them from bottom to top. Hence, the first widget is the bottommost item, and the last widget is the topmost item
//The following are the properties used with the stack widget:

// alignment: It determines how the children widgets are positioned in the stack. It can be top, bottom, center, center-right, etc.
//textDirection: It determines the text direction. It can draw the text either ltr (left to right) or rtl (right to the left).
//fit: It will control the size of non-positioned children widgets in the stack. It has three types: loose, expand and passthrough. The loose used to set the child widget small, the expand attribute makes the child widget as large as possible, and the passthrough set the child widget depending on its parent widget.
//overflow: It controls the children widgets, whether visible or clipped, when it's content overflowing outside the stack.
            fit: StackFit.passthrough,
            //overflow: Overflow.clip, // Clip the Content
            alignment: Alignment.topCenter, // Center of Top
            children: <Widget>[
              // Max Size Widget
              Container(
                height: 300,
                width: 400,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Top Widget: Green',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
// const Positioned({
// Key key,
// this.left,
// this.top,
// this.right,
// this.bottom,
// this.width,
// this.height,
// @required Widget child,
// })
                top: 10,
                right: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Middle Widget',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.orange,
                    child: Stack(
                      // it is possible to wrap stack inside stack in Flutter. We can do this by wrapping the second stack inside the container with height and width property.
                      children: const [
                        Positioned(
                          bottom: 15,
                          left: 10,
                          child: Text(
                            'Bottom Widget',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          )),
//Form
//Flutter provides a Form widget to create a form. The form widget acts as a container, which allows us to group and validate the multiple form fields. When you create a form, it is necessary to provide the GlobalKey. This key uniquely identifies the form and allows you to do any validation in the form fields.
//The form widget uses child widget TextFormField to provide the users to enter the text field. This widget renders a material design text field and also allows us to display validation errors when they occur.
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your full name',
                    labelText: 'Name',
                  ),
// Validating forms is a common practice in all digital interactions. To validate a form in a flutter, we need to implement mainly three steps.

// Step 1: Use the Form widget with a global key.

// Step 2: Use TextFormField to give the input field with validator property.

// Step 3: Create a button to validate form fields and display validation errors.

// Let us understand it with the following example. In the above code, we have to use validator() function in the TextFormField to validate the input properties. If the user gives the wrong input, the validator function returns a string that contains an error message; otherwise, the validator function return null. In the validator function, make sure that the TextFormField is not empty. Otherwise, it returns an error message.
                  // validator: (value) {
                  // if (value.isEmpty) {
                  //   return 'Please enter some text';
                  // }
                  // return null;
                  // },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter a valid Email',
                      labelText: 'E-Mail'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  // validator: (value) {
                  //   if (value.isEmpty || !value.contains('@')) {
                  //     return 'Invalid email!';
                  //   }
                  // },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'Enter a phone number',
                    labelText: 'Phone',
                  ),
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter valid phone number';
                  //   }
                  //   return null;
                  // },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter your date of birth',
                    labelText: 'Dob',
                  ),
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter valid date';
                  //   }
                  //   return null;
                  // },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: const Icon(Icons.lock), labelText: 'Password'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Enter a valid password!';
                  //   }
                  //   return null;
                  // },
                ),
                Container(
                    padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                    child: new ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        // It returns true if the form is valid, otherwise returns false
                        // if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        //  Scaffold.of(context)
                        //     .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                        // }
                      },
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
