import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/authentications/sign_in.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailTextControl = TextEditingController();
  TextEditingController passwordTextControl = TextEditingController();
  TextEditingController userTextControl = TextEditingController();
  bool isPasswordHide = true;
  hideUnhidePass() {
    setState(() {
      isPasswordHide = !isPasswordHide;
    });
  }

  signUpUser(context) async {
    if (emailTextControl.text == "" && passwordTextControl.text == "") {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Enter email and password")));
    } else {
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: emailTextControl.text,
              password: passwordTextControl.text,
            );
        Navigator.pop(context);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("User Created")));
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.code)));

        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
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
                              controller: userTextControl,
                              decoration: InputDecoration(
                                hintText: "User name",
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
                              controller: emailTextControl,
                              decoration: InputDecoration(
                                hintText: "Phone number, email address",
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
                                signUpUser(context);
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
                                "Sign Up",
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
                                Text(
                                  "Log in with Google",
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
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
                  Text("Already an account?", style: TextStyle(fontSize: 17)),
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
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },

                      child: Text(
                        "Log In",
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
