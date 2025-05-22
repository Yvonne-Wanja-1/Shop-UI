import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:recap/widgets/itempageappbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ItemPageAppBar(),
          Container(
            margin: EdgeInsets.all(25),
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              image: DecorationImage(
                image: AssetImage('images/44.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEX,
            height: 30,
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50), // Adds spacing at the top
                    Text(
                      'Product Title',
                      //centers the text
                      textAlign: TextAlign.center,
                      style: TextStyle(
                       // centers the text:

                       

                      
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20), // Adds spacing at the bottom
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}