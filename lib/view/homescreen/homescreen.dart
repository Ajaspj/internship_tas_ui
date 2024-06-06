import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/homescreen/widgets/grid.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on),
            Text(
              'kakkanad city',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Icon(Icons.sort),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                  text: 'Find The ',
                  children: [
                    TextSpan(
                      text: 'Best Food',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(text: ' Around You'),
                  ],
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(241, 228, 224, 224),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Expanded(child: Text('Search your favourite food')),
                  SizedBox(width: 10),
                  Icon(Icons.tune),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Text(
                  'Find',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text('5km', style: TextStyle(color: Colors.orange)),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.orange,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Salads',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(241, 228, 224, 224),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Hot Sale',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(241, 228, 224, 224),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Popularity',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.68),
              itemBuilder: (context, index) {
                return GridItemView();
              },
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}
