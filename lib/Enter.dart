import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class enter extends StatefulWidget {
  const enter({super.key});

  @override
  State<enter> createState() => _enterState();
}

class _enterState extends State<enter> {
  final user=FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Body"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Text("You entered as "+user.email!,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.red,
              ),),

            ),
            MaterialButton(onPressed: (){
              FirebaseAuth.instance.signOut();
            },
            color: Colors.black,

              child: Text("Sign Out",
              style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),


      ),
    );
  }
}
