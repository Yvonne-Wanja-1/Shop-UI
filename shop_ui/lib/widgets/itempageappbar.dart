import 'package:flutter/material.dart';

class ItemPageAppBar extends StatelessWidget {
  const ItemPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // border rdius:
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(20),
      //     bottomRight: Radius.circular(20),
      //   ),
     
height: 80,
      padding: EdgeInsets.all(5),
      //margin: EdgeInsets.all(3),
      color: const Color.fromARGB(255, 223, 190, 190),
      // decoration:  BoxDecoration(
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(10),
          
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Text(
            'Product',
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Arial',
              fontStyle: FontStyle.italic,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

         // Spacer(),
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined, color: Colors.red),
            onPressed: () {
           
            },
          ),
        ],
      ),
    );
  }
}