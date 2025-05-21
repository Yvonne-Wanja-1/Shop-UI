import 'package:flutter/material.dart';
import 'package:recap/widgets/itempageappbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Item Page',
          style: TextStyle(color: Colors.black),
        ),
      ),




      body: Column(
        children: [
          Container (
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/44.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Add more widgets here as needed
        ],
      ),
     
    );
  }
}