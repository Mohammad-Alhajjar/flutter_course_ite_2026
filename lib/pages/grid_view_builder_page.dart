import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatelessWidget {
  const GridViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          mainAxisExtent: 750,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(30),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.network(
                    "https://www.liveeatlearn.com/wp-content/uploads/2025/09/Veggie-Pizza-12.jpg",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Classic Burger", style: TextStyle(fontSize: 40)),
                      Text(
                        "Et esse cillum minim reprehenderit quis est velit sunt elit in eiusmod commodo et adipisicing. Sunt minim aliqua laborum in culpa. Non voluptate laboris dolor deserunt anim est adipisicing incididunt do. Eu ad minim exercitation ",
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment(0, 0),
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.purple),
                            ),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          SizedBox(width: 14),
                          Container(
                            alignment: Alignment(0, 0),
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple,
                            ),
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
