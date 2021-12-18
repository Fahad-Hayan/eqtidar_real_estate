import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:eqtidar_app/Widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MySignUpScreen extends StatefulWidget {
  const MySignUpScreen({Key? key}) : super(key: key);

  @override
  State<MySignUpScreen> createState() => _MySignUpScreenState();
}

class _MySignUpScreenState extends State<MySignUpScreen> {
  var emailTextController = TextEditingController();
  var mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Register',
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.center,
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
                const StandardTextField(
                    hintText: 'Full Name', icon: Icon(Icons.person)),
                const StandardTextField(
                  hintText: 'Mobile Number',
                  icon: Icon(Icons.phone),
                ),
                const StandardTextField(
                  hintText: 'Password',
                  icon: Icon(Icons.password),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.balsamiqSans(
                        fontSize: 16,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                      ),
                      // TextStyle(
                      //     color: Colors.black45,
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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



// Container(
//                 //This container for Password
//                 margin: EdgeInsets.all(20),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     labelStyle:
//                         TextStyle(fontSize: 20, color: Colors.blue[800]),
//                     hintText: "Enter Your Password",
//                     hintStyle: TextStyle(color: Colors.grey),
//                     prefixIcon: Icon(Icons.password_outlined),
//                     suffixIcon: IconButton(
//                       icon: Icon(passwoerdVisible
//                           ? Icons.visibility
//                           : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           passwoerdVisible = !passwoerdVisible;
//                         });
//                       },
//                     ),
//                   ),
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: passwoerdVisible,
//                 ),
//               ),
