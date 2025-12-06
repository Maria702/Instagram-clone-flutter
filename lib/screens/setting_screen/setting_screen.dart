import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/screens/authentications/sign_in.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  void SignOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignIn()),
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Sign Out")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Setting and Privacy"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "search",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 249, 246, 246),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Account"),
                  Image.asset(
                    "assets/images/logo_2.png",
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Row(
                children: [
                  CircleAvatar(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Account Center"),
                            Text(
                              "Password, security, personal details, ad\npreferences",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(children: [Icon(Icons.arrow_forward_ios)]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Row(
                children: [
                  Text(
                    "Manage your connected esperiences and account\nsettings across Meta technologies, Learn more",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: const Color.fromARGB(255, 236, 235, 235),
              thickness: 3,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Row(children: [Text("How you use Instagram")]),
            ),
            SizedBox(height: 20),
            ProfessionalDashboard(
              menuIcon: Icons.bookmark_outline_outlined,
              menuText: "Saved",
            ),
            SizedBox(height: 20),
            ProfessionalDashboard(
              menuIcon: Icons.access_time,
              menuText: "Archive",
            ),
            SizedBox(height: 20),
            ProfessionalDashboard(
              menuIcon: Icons.local_activity_outlined,
              menuText: "Your Activity",
            ),
            SizedBox(height: 20),
            ProfessionalDashboard(
              menuIcon: Icons.notifications_outlined,
              menuText: "Notifications",
            ),
            SizedBox(height: 20),
            ProfessionalDashboard(
              menuIcon: Icons.access_time,
              menuText: "Time management",
            ),
            SizedBox(height: 10),
            Divider(
              color: const Color.fromARGB(255, 236, 235, 235),
              thickness: 3,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Login"),
                      SizedBox(height: 20),
                      Text("Add account", style: TextStyle(color: Colors.blue)),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          SignOut(context);
                        },
                        child: Text(
                          "Log out",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Log out all accounts",
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfessionalDashboard extends StatelessWidget {
  const ProfessionalDashboard({
    super.key,
    required this.menuText,
    required this.menuIcon,
  });
  final String menuText;
  final IconData menuIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Row(
        children: [
          Icon(menuIcon),
          SizedBox(width: 10),
          Text(menuText),
          Spacer(),
          Row(children: [Icon(Icons.arrow_forward_ios)]),
        ],
      ),
    );
  }
}
