import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new StateOfLoginPage();
  }

}

class StateOfLoginPage extends State<LoginPage>{
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text('E-Shopping App'),
      ),

      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 100.0,),
            Column(children: <Widget>[
              Image.asset('assets/images/diamond.png',),
              SizedBox(height: 20.0,),
              Center(child: Text('SHRINE')),
            ],),
            SizedBox(height: 80.0,),

            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
              ),
            ),
            SizedBox(height: 16.0,),
            TextField(
              controller: _passwordController,
              obscureText: true,//the value automatically replaces the input that the user types with bullets, which is appropriate for passwords.
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
              ),
            ),
            SizedBox(height: 16.0,),
            ButtonBar(
             // alignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),

                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),

              ],
            ),



          ],
        ),
      ),

    );
  }


}