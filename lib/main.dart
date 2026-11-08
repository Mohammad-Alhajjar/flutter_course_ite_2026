import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

PageController myController = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: myController,
          reverse: false,
          // scrollDirection: Axis.vertical,
          scrollDirection: Axis.horizontal,
          // scrollBehavior: ,
          // scrollBehavior: MaterialScrollBehavior(),
          // physics: BouncingScrollPhysics(),
          physics: NeverScrollableScrollPhysics(),
          children: [
            Scaffold(
              floatingActionButton: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_back),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      myController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.linear,
                      );
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              backgroundColor: Colors.red,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("1", style: TextStyle(fontSize: 100)),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        // Todo: Go to page 3
                        myController.jumpToPage(2);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 10),
                              blurRadius: 15,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Text(
                          "Go To Page 3 with jump",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // Todo: Go to page 3
                        myController.animateToPage(
                          2,
                          duration: Duration(seconds: 1),
                          curve: Curves.bounceInOut,
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 10),
                              blurRadius: 15,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Text(
                          "Go To Page 3 with Animation",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
              floatingActionButton: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      myController.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.linear,
                      );
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      myController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.linear,
                      );
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              backgroundColor: Colors.blue,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("2", style: TextStyle(fontSize: 100)),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        // Todo: Go to page 3
                        myController.animateToPage(
                          0,
                          duration: Duration(seconds: 1),
                          curve: Curves.bounceOut,
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 10),
                              blurRadius: 15,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Text(
                          "Go To Page 1",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
              floatingActionButton: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      myController.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.linear,
                      );
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      myController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.linear,
                      );
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              backgroundColor: Colors.green,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("3", style: TextStyle(fontSize: 100)),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        // Todo: Go to page 3
                        myController.animateToPage(
                          1,
                          duration: Duration(seconds: 1),
                          curve: Curves.bounceOut,
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0x262626ff),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(10, 10),
                              blurRadius: 15,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Text(
                          "Go To Page 2",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
              appBar: AppBar(title: Text("Home Page")),
              body: Column(
                spacing: 10,
                children: [
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.indigoAccent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Text("A"),
                    ),
                    title: Text("Asus Vivobook S16"),
                    subtitle: Text("CPU: Core i5-12 , RAM: 8GB"),
                    trailing: Text("800\$"),
                    tileColor: Color(0x87B8B5ff),
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.indigoAccent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Text("A"),
                    ),
                    title: Text("Asus Vivobook S16"),
                    subtitle: Text("CPU: Core i5-12 , RAM: 8GB"),
                    trailing: Text("800\$"),
                    tileColor: Colors.yellow,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.indigoAccent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Text("A"),
                    ),
                    title: Text("Asus Vivobook S16"),
                    subtitle: Text("CPU: Core i5-12 , RAM: 8GB"),
                    trailing: Text("800\$"),
                    tileColor: Colors.yellow,
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
