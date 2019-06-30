import 'package:e_commerce/constants.dart';
import 'package:e_commerce/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatelessWidget {
  void navigateToHome(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black54,
          backgroundBlendMode: BlendMode.dstATop,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Spacer(),
              Icon(
                FontAwesomeIcons.opencart,
                size: 100,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Shrine',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: kEnabledBorder,
                  focusedBorder: kFocusedBorder,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: kEnabledBorder,
                  focusedBorder: kFocusedBorder,
                ),
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Text(
                    'Forgot Password? ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                clipBehavior: Clip.antiAlias,
                child: RaisedButton(
                  onPressed: () {
                    navigateToHome(context);
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              FacebookSignInButton(
                borderRadius: 10,
                onPressed: () {
                  navigateToHome(context);
                },
              ),
              GoogleSignInButton(
                borderRadius: 10.0,
                onPressed: () {
                  navigateToHome(context);
                },
              ),
              Spacer(),
              Text("Don't have an Account? Register Now ! ")
            ],
          ),
        ),
      ),
    );
  }
}
