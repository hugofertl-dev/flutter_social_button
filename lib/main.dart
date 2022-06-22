import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practico_1/custom_button.dart';
import 'package:flutter_practico_1/custom_button_social.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Material App Bar'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height,
                      maxWidth: MediaQuery.of(context).size.width),
                  child: SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(children: const [
                          Icon(FontAwesomeIcons.google),
                          SizedBox(width: 10),
                          Flexible(child: Text('Google'))
                        ]),
                      )),
                )),
                //////
                Center(
                    child: CustomButton(
                        child: Row(children: const [
                          Icon(FontAwesomeIcons.apple),
                          SizedBox(width: 10),
                          Flexible(child: Text('Apple'))
                        ]),
                        onPressed: () {})),
                ///////
                Center(
                    child: CustomButton.icon(
                        icon: const Icon(FontAwesomeIcons.google),
                        label: const Text('Google'),
                        onPressed: () {})),
                ///////
                Center(child: CustomButtonSocial.google(onPressed: () {})),
              ],
            ),
          );
        }));
  }
}
