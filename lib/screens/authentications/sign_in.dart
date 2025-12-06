import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/bottom_navigation/bottomNavigation.dart';
import 'package:instagram_clone/screens/authentications/sign_up.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailTextControl = TextEditingController();
  TextEditingController passwordTextControl = TextEditingController();
  bool isPasswordHide = true;
  hideUnhidePass() {
    setState(() {
      isPasswordHide = !isPasswordHide;
    });
  }

  loginUser(context) async {
    if (emailTextControl.text == "" && passwordTextControl.text == "") {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Enter email and password")));
    } else {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: emailTextControl.text,
              password: passwordTextControl.text,
            );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigationScreen()),
        );
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("User Created")));
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.code)));

        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      } catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("$e")));

        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/images/Instagram_homeLogo.png",
                        ),
                        width: 200,
                      ),
                      SizedBox(height: 40),
                      SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            TextField(
                              controller: emailTextControl,
                              decoration: InputDecoration(
                                hintText:
                                    "Phone number, user name, email address",
                                hintStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.pink,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            TextField(
                              controller: passwordTextControl,
                              obscureText: isPasswordHide,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    isPasswordHide
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                  onPressed: hideUnhidePass,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.pink,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                loginUser(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue,
                                minimumSize: Size(400, 50),
                                shadowColor: Colors.pink,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),

                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                    endIndent: 10,
                                  ),
                                ),
                                Text(
                                  "OR",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                    indent: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/fb.png"),
                                  width: 30,
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Log in with Google",
                                    style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Forgotten your pasword?",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(width: 8),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 17, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
