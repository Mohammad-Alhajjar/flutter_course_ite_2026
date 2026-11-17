import 'package:demo_final_1000/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (String? value) {
                    final RegExp emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    );
                    print("validator email");
                    if (value!.isEmpty) {
                      return "email field is empty ...";
                    } else if (!emailValid.hasMatch(value)) {
                      return "please is a valid email, example: email@email.com";
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    print("validator password");
                    print(value);

                    if (value?.isEmpty ?? true) {
                      return "password field is empty ...";
                    } else if ((value!.length < 6)) {
                      return "password is weak.. musr be more than 5 charcters";
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    // border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    if (formKey.currentState?.validate() ?? false) {
                      // ! Navigate to Home Page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return HomePage();
                          },
                        ),
                      );
                    } else {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(
                      //     action: SnackBarAction(
                      //       label: "Close",
                      //       onPressed: () {},
                      //     ),
                      //     duration: Duration(seconds: 10),
                      //     content: Text(
                      //       "invalid information, please check your email and password and try again ....",
                      //       style: TextStyle(color: Colors.white),
                      //     ),
                      //     backgroundColor: Colors.red,
                      //   ),
                      // );
                    }

                    // if (emailController.text.isEmpty ||
                    //     passwordController.text.isEmpty) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(
                    //       action: SnackBarAction(
                    //         label: "Close",
                    //         onPressed: () {},
                    //       ),
                    //       duration: Duration(seconds: 10),
                    //       content: Text(
                    //         "invalid information, please check your email and password and try again ....",
                    //         style: TextStyle(color: Colors.white),
                    //       ),
                    //       backgroundColor: Colors.red,
                    //     ),
                    //   );
                    // }
                  },
                  child: Container(
                    alignment: Alignment(0, 0),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Filled Button"),
                ),
                SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: Text("Filled Button")),
                SizedBox(height: 10),
                OutlinedButton(onPressed: () {}, child: Text("Filled Button")),
                SizedBox(height: 10),
                TextButton(onPressed: () {}, child: Text("Filled Button")),
                SizedBox(height: 10),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                SizedBox(height: 10),
                // FloatingActionButton(
                //   onPressed: () {},
                //   child: Icon(Icons.settings),
                // ),
                // SizedBox(height: 10),
                // FloatingActionButton.extended(
                //   onPressed: () {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //       SnackBar(content: Text("FAB Extended clicked")),
                //     );
                //   },
                //   icon: Icon(Icons.edit),
                //   label: Text("Edit"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
