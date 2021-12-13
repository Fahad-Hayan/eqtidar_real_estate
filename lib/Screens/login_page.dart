import 'dart:math';
import 'dart:ui';

import 'package:eqtidar_app/Screens/register_page.dart';
import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Screens/main_screen.dart';
import 'package:eqtidar_app/Widgets/floating_action_button.dart';
import 'package:eqtidar_app/Widgets/text_field.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
              child: Column(
                children: [
                  const FlutterLogo(
                    size: 150,
                    textColor: Color.fromRGBO(179, 174, 34, 1),
                    style: FlutterLogoStyle.stacked,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const StandardTextField(
                    hintText: 'Mobile number',
                    icon: Icon(Icons.phone),
                  ),
                  const StandardTextField(
                    hintText: 'Password',
                    icon: Icon(Icons.password),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (emailTextController.text.isEmpty) {
                          debugPrint('emailTextController.text is empty...');
                        }
                        debugPrint(
                            'emailTextController.text: ${emailTextController.text}');
                        debugPrint(
                            'passwordTextController.text: ${passwordTextController.text}');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(color: Colors.black45, fontSize: 16.0),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return const MySignUpScreen();
                          }));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // ListView(
      //   children: [
      //     const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 30),
      //       child: Icon(Icons.person_rounded),
      //     ),
      //     Container(
      //       height: 30,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Card(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         elevation: 1,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: TextField(
      //             textAlign: TextAlign.center,
      //             controller: emailTextController,
      //             decoration: const InputDecoration(hintText: 'Email'),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Card(
      //         elevation: 1,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: TextField(
      //             textAlign: TextAlign.center,
      //             controller: passwordTextController,
      //             decoration: const InputDecoration(hintText: 'Password'),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: ElevatedButton(
      //           onPressed: () {
      //             if (emailTextController.text.isEmpty) {
      //               debugPrint('emailTextController.text is empty...');
      //             }
      //             debugPrint(
      //                 'emailTextController.text: ${emailTextController.text}');
      //             debugPrint(
      //                 'passwordTextController.text: ${passwordTextController.text}');
      //           },
      //           child: const Text('Login'),
      //           ),
      //     ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //   child: Row(
      //     children: [
      //       const Text('If you\'re new to our platform, you can'),
      //       TextButton(
      //         onPressed: () {
      //           Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      //             return const MySignUpScreen();
      //           }));
      //         },
      //         child: const Text('Register'),
      //       ),
      //       const Text('now'),
      //     ],
      //   ),
      // )
      //   ],
      // ),
    );
  }
}
