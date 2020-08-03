import 'package:flutter/material.dart';
import 'package:genpy/model/themes.dart';
import 'package:genpy/services/theme_provider.dart';
import 'package:provider/provider.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchValue=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Genpy"),actions: <Widget>[
          Switch(value: switchValue, onChanged: (value){
            setState(() {
              switchValue=!switchValue;
              if(switchValue==false){
                ChangeNotifierProvider<ThemeNotifier>(
                    create: (_) => ThemeNotifier(lightTheme));

              }

            });
           }),
        ],),
      ),
    );
  }
}
