import 'package:flutter/material.dart';

class GridItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(241, 228, 224, 224),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://static.vecteezy.com/system/resources/previews/018/128/193/non_2x/delicious-spinach-salad-with-fresh-png.png"),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.favorite_border,
                      ),
                    ),
                  ],
                ),
                Text("Avacado salad",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Row(
                  children: [
                    Text(
                      '20min',
                      style: TextStyle(fontSize: 15),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star_outline,
                      color: Colors.amber,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              SizedBox(width: 15),
              Text('\$12.00',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Spacer(),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
