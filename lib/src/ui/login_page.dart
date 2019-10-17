import 'package:flos/src/ui/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Login"),
     ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(75, 10, 75, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://integrasi.science/wp-content/uploads/2017/12/pernikahan.jpg")
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              TextField(
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.pinkAccent,width: 2),
                     borderRadius: BorderRadius.all(Radius.circular(15))
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.pink,width: 1),
                     borderRadius: BorderRadius.all(Radius.circular(15))
                   ),
                   hintText: "Username"
                 ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.pink,width: 2),
                     borderRadius: BorderRadius.all(Radius.circular(15))
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.pink,width: 1),
                     borderRadius: BorderRadius.all(Radius.circular(15))
                   ),
                  hintText: "Password",
                ),obscureText: true,
              ),
              RaisedButton(
                child: Text("Login"),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => HomePage()
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}