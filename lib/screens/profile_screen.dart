import 'package:flutter/material.dart';
import 'package:cryptoapp/components/custom_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cryptoapp/components/custom_tile.dart';
import 'package:cryptoapp/components/bottom_tab_bar.dart';




class ProfileScreen extends StatefulWidget {
  @override 
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isNightModeOn = false;
  bool _isPassCodeLockOn = true;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Profile & Settings',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: 20,
          ),
        ), 
        actions: <Widget>[
          //Icon(FontAwesomeIcons.ellipsisV)
          CustomIconButton(
            icon: FontAwesomeIcons.envelope,
            iconSize: 25.0,
            onTap:() {
              print('Pressed envelope');
            }
          ),
          CustomIconButton(
            icon: FontAwesomeIcons.ellipsisV,
            iconSize: 25.0,
            onTap: () {
              print('Pressed ellipsisV');
            },
          ), 
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/sasuke.jpg'),
              minRadius: 54.0,
              maxRadius: 54.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Sasuke Uchiha', 
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 30.0,
              ),
            ), 
            Text(
              'sasuke.uchiha@gmail.com',
              style: TextStyle(
                fontFamily: 'Source Sans Pro', 
                fontSize: 13.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  CustomTile(
                    title: 'Night Mode',
                    trailing: Switch(
                      value: _isNightModeOn, 
                      onChanged: (newVal) {
                        setState(() {
                          _isNightModeOn = newVal;
                        });
                      },
                    ),
                  ),
                  CustomTile(
                    title: 'Pass Code Lock',
                    trailing: Switch(
                      value: _isPassCodeLockOn, 
                      onChanged: (newVal) {
                        setState(() {
                          _isPassCodeLockOn = newVal;
                        });
                      },
                    ),
                  ),
                  CustomTile(
                    title: 'Language',
                    trailing: Row(
                      children: <Widget> [
                        Text('English'),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    onTap: (){},
                  ),
                  CustomTile(
                    title: 'Base Currency',
                    trailing: Row(
                      children: <Widget> [
                        Text('USD'),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    onTap: (){},
                  ),
                  CustomTile(
                    title: 'Data Recovery & Transfer',
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){}
                  ),
                ],
              ),
            ),
            BottomTabBar(),
          ],
        ),
      ),
    );
  }
}