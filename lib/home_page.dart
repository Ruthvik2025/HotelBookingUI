import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              child: Icon(
                Icons.menu,
                size: 32,
              ),
              onTap: () {},
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.houseboat_outlined,
          color: Colors.white,
          size: 32,
        ),
        title: const Text(
          "TripFinder",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: Stack(fit: StackFit.expand, children: [
        // Full-screen image
        Image.network(
          'https://i.pinimg.com/originals/8d/ac/a4/8daca4ecaa5e7273303d9e456cc597a0.jpg', // Replace with your image URL
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                height: screenHeight / 3,
                width: double.infinity,
                child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(children: [
                      Text(
                        "Latest reviews.LAtest prices",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      // Add spacing between text and row
                      Row(
                        children: [
                          Icon(Icons
                              .location_on_outlined), // Replace with the desired icon
                          SizedBox(width: 8.0),
                          // Replace with the desired icon
                          SizedBox(width: 8.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter text',
                                // border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.gps_fixed),
                        ],
                      ),
                      SizedBox(height: 8),
                      // Add spacing between text and row
                      Row(
                        children: [
                          Icon(Icons
                              .location_on_outlined), // Replace with the desired icon
                          SizedBox(width: 8.0),
                          // Replace with the desired icon
                          SizedBox(width: 8.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter text',
                                // border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.gps_fixed),
                        ],
                      ),
                      SizedBox(height: 8),
                      // Add spacing between text and row
                      Row(
                        children: [
                          Icon(Icons
                              .location_on_outlined), // Replace with the desired icon
                          SizedBox(width: 8.0),
                          // Replace with the desired icon
                          SizedBox(width: 8.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter text',
                                // border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.gps_fixed),
                        ],
                      ),
                    ])
                    // Ensure the container takes up the full width
                    // Your container content goes here
                    ),
              ),
            ))
      ]),
    );
  }
}
