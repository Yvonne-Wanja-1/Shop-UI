import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a list of your new image names
    // Make sure these images exist in your 'images/' asset folder
    // and that your pubspec.yaml is configured to include them.
    final List<String> productImages = [ // These should just be the filenames
      '2.jpg', // Replace with your first image name (just the filename)
      'school bag.jpg',  // Replace with your second image name (just the filename)
      'watch.jpg', // Replace with your third image name (just the filename)
      'hat.jpg', // Replace with your fourth image name (just the filename)
     // 'briefcase.jpg', // Replace with your fifth image name (just the filename)
    ];
    return Column(
      children: [
        for (int i = 0; i < productImages.length; i++) // Loop through the productImages list
        Container(
          height: 120,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              // Radio Button
              Radio(
                value: "selected",
                groupValue: "selected", // Replace with a variable for dynamic selection
                onChanged: (value) {
                  // Add your logic here
                },
                activeColor: Colors.blue,
              ),
              const SizedBox(width: 15),

              // Product Image
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/${productImages[i]}'), // Use image from the list
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueAccent,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),

              // Product Details
              Expanded(
                child: Column(
                 // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Product Name',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Total Price',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                      ),
                    ),
                  ],
                ),
              ),

              // Delete Icon and Quantity Controls
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Delete Icon
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 30,
                    ),
                    onPressed: () {
                      // Add delete logic here
                    },
                  ),
                  const SizedBox(height: 10),

                  // Quantity Controls
                  Row(
                    children: [
                      // Add Button
                      InkWell(
                        onTap: () {
                          // Add increment logic here
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),

                      // Quantity Text
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),

                      // Remove Button
                      InkWell(
                        onTap: () {
                          // Add decrement logic here
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        
      ],
    );
      
    
  }
}