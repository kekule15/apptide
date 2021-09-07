import 'package:apptide/screens/home_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              'Welcome back',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade100),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 10, 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFD4AF37).withOpacity(0.3),
                      radius: 25,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 16,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Username/Email',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade100),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 10, 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFD4AF37).withOpacity(0.3),
                      radius: 25,
                      child: Icon(
                        Icons.security,
                        color: Colors.grey,
                        size: 16,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                              size: 20,
                            ),
                            hintText: 'password',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text('Lost your password?')),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF26200B),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Image(image: AssetImage('assets/arrow.png'))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Or sign in with',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade100,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('asstes/goggle.PNG'),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade100,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('asstes/goggle.PNG'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
