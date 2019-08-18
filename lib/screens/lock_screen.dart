import 'package:cryptoapp/components/custom_keyboard.dart';
import 'package:cryptoapp/components/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:cryptoapp/components/round_container.dart';
import 'profile_screen.dart';

class LockScreen extends StatefulWidget {
  @override 
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  int inputCounter = 0;
  String setPassword = '1234'; 
  String inputPassword = '';

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomIconButton(
              icon: Icons.arrow_downward,
              onTap: (){},
              iconSize: 25.0,
            ), 
            Text(
              'Use Face ID',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
            ),
          ),
            CustomIconButton(
              icon: IconData(
                105, 
                fontFamily: 'Great Vibes',
              ),
              onTap: (){},
              iconSize: 25.0,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RoundContainer(
                child: RoundContainer(
                  child: CustomIconButton(
                      icon: Icons.camera,
                      iconSize: 60.0,
                      onTap: (){print('camera');},
                    ),
                ), 
                color: Colors.red,
                width: 150.0, 
                height: 150.0,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.pink, Colors.yellow, Colors.lightGreen, Colors.greenAccent, Colors.lightBlue, Colors.amberAccent]
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0), 
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Enter you Password'), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(IconData(
                          46, 
                          fontFamily: 'Source Sans Pro'), 
                          size: 30.0, 
                          color: inputPassword.length >= 1 ? Colors.white : Color(0xFF3F4D75),
                        ), 
                        Icon(IconData(
                          46, 
                          fontFamily: 'Source Sans Pro'), 
                          size: 30.0, 
                          color: inputPassword.length >= 2 ? Colors.white : Color(0xFF3F4D75),
                        ),  
                        Icon(IconData(
                          46, 
                          fontFamily: 'Source Sans Pro'), 
                          size: 30.0, 
                          color: inputPassword.length >= 3 ? Colors.white : Color(0xFF3F4D75),
                        ),  
                        Icon(IconData(
                          46, 
                          fontFamily: 'Source Sans Pro'), 
                          size: 30.0, 
                          color: inputPassword.length >= 4 ? Colors.white : Color(0xFF3F4D75),
                        ),  
                      ],
                    ),
                  ],
                ) 
              ),
              Expanded(
                child: CustomKeyBoard(
                  onTap: (int i){
                  switch(i) {
                     case 215: {                      
                      setState(() {
                        inputPassword = inputPassword.length > 0 ? inputPassword.substring(0, inputPassword.length - 1) : '';
                        // print(inputPassword);
                      });
                      
                     }
                     break;
                     case 0xe90d: {
                     }
                     break;
                     default: {
                       if (inputPassword.length < 4) {
                         setState(() {
                          inputPassword = inputPassword + String.fromCharCode(i);
                         });
                       }
                       print(inputPassword);
                       if (inputPassword.length == 4) {
                         if (inputPassword == setPassword) {
                          inputPassword = ''; 
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ));
                        }
                       } 
                      }
                    }
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}