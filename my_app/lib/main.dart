import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Loginpage(),
        theme: new ThemeData(primarySwatch: Colors.red));
  }
}

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Blood Bank',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('abcd@gmail.com'),
              accountName: Text('Company Email'),
            ),
            Text('Details')
          ],
        ),
      ),
      backgroundColor: Colors.redAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/my.jpg"),
            fit: BoxFit.cover,
          ),
          new Form(
              child: Center(
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: 350.0,
                    color: Colors.red[100],
                    child: new TextFormField(
                        decoration: new InputDecoration(
                            labelText: " Enter Email",
                            hintText: "abcd@gmail.com",
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 25.0)),
                        keyboardType: TextInputType.emailAddress),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: 350.0,
                    color: Colors.red[100],
                    child: new TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                          labelText: "Enter Password",
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 25.0)),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                new Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child:new MaterialButton(
                        color: Colors.redAccent,
                        textColor: Colors.white,
                        child: new Text("Login"),
                        onPressed: (){

                        },
                        splashColor: Colors.redAccent,

                      )
                    )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
