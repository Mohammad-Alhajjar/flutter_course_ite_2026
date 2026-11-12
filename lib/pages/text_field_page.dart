import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  TextFieldPage({super.key});
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tooltip(
              message: "Email",
              child: TextField(
                keyboardType: TextInputType.phone,
                maxLines: 5,
                minLines: 2,
                controller: emailController,
                // obscureText: true,
                // obscuringCharacter: "*",
                enabled: true,
                style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                decoration: InputDecoration(
                  // label: Text("Email", style: TextStyle(color: Colors.blue)),
                  prefix: Text("Email"),
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.amber,
                  // prefixText: "Username",
                  // prefixStyle: TextStyle(color: Colors.red),
                  suffixIcon: Icon(Icons.visibility),
                  // suffix: ,
                  // suffixIconColor: ,
                  // suffixStyle: ,
                  // suffixText: ,
                  contentPadding: EdgeInsets.all(20),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelStyle: TextStyle(color: Colors.lightGreenAccent),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.blue),
                  icon: Icon(Icons.email, color: Colors.blueAccent),
                  iconColor: Colors.red,
                  helper: Text(
                    "Enter A Vaild Email, example: example@email.com",
                  ),
                  hintText: "Enter your email",
                  hintStyle: TextStyle(color: Colors.green),
                  // border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue, width: 4),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey, width: 4),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                print(emailController.text.trim());
              },
              child: Container(
                alignment: Alignment(0, 0),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
