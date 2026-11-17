import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Prevoius Page"),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:demo_final_1000/pages/item_details_page.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: 30,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         ItemDetailsPage(title: "title $index"),
//                   ),
//                 );
//               },
//               title: Text("item $index"),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
