import 'package:eqtidar_app/Widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    var headerImage = SvgPicture.asset('images/undraw_Notify_re_65on.svg',
        height: 200, semanticsLabel: 'Acme Logo');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Eqtidar'),
      ),
      body: Stack(children: [
        Positioned(
          top: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.network(
              'https://images.unsplash.com/photo-1582407947304-fd86f028f716?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=996&q=80',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.amberAccent[100],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        const StandardTextField(
                          hintText: 'Mobile number',
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Login'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('or you can'),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return const MySignUpScreen();
                                }));
                              },
                              child: const Text(
                                'Register',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
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
