import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Flutter"),
            Expanded(
              // height: 500,
              child: GridView(
                // clipBehavior: Clip.none,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 30,
                  // mainAxisExtent: 500,
                  childAspectRatio: 16 / 9,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 15),
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(color: Colors.green),
                  Container(color: Colors.yellow),
                  Container(color: Colors.pink),
                  Container(color: Colors.blue),
                  Container(color: Colors.lime),
                  Container(color: Colors.purple),
                  Container(color: Colors.red),
                  Container(color: Colors.green),
                  Container(color: Colors.yellow),
                  Container(color: Colors.pink),
                  Container(color: Colors.blue),
                  Container(color: Colors.lime),
                  Container(color: Colors.purple),
                  Container(color: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
