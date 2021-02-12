import '../drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mas(),
    );
  }
}


class Mas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appTitle = 'Жаңа ұсыныстар';

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
              margin: EdgeInsets.only(),
              child: Text(appTitle,style: TextStyle(color: Colors.black),)),
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(Icons.menu,color: Colors.black,),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),


        ),
        drawer: NiyazDrawer(),
        body: MyForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyForm extends StatefulWidget {
  @override
  MyFormState createState() {
    return MyFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyFormState extends State<MyForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child:  Padding(
        padding: const EdgeInsets.only(right: 36, left: 36,top: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


           SingleChildScrollView(

               scrollDirection: Axis.horizontal,
               child: Text('Осы проектке байланысты жаңа  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),

            Text(' ұсыныстарыңыз болса!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),

            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'ұсыныс жазу..';
                  }
                  return null;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(35.0),
              child: SizedBox(
                height: 40,
                width:  150,
                child: RaisedButton(


                  color: Colors.red,


                  hoverColor: Colors.red,


                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                  child: const Text('Жіберу',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),



                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Validation Success!')));
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

