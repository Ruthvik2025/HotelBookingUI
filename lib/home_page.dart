import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/neo_button.dart';
import 'package:hotel_booking_app_ui/overview_page.dart';
import 'package:intl/intl.dart';
import 'package:neopop/neopop.dart';

class HomePage extends StatelessWidget {
  final TextEditingController dateController = TextEditingController();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle drawer item tap
              },
            ),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Full-screen image
          Image.network(
            'https://i.pinimg.com/originals/8d/ac/a4/8daca4ecaa5e7273303d9e456cc597a0.jpg',
            // Replace with your image URL
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                height: screenHeight / 3,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const Text(
                        "Latest reviews.Latest prices",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search,*Thailand,Asia*",
                                prefixIcon: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.teal,
                                ),
                                suffixIcon: Icon(
                                  Icons.gps_fixed,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: dateController,
                              decoration: InputDecoration(
                                hintText: 'Check-In ',
                                prefixIcon: Icon(
                                  Icons.calendar_month,
                                  color: Colors.teal,
                                ),
                                suffix: Text("Check-out"),
                              ),
                              onTap: () {
                                _selectDate(context, DateFormat.E());
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Guests',
                                prefixIcon: Icon(
                                  Icons.people,
                                  color: Colors.teal,
                                ),
                                suffixIcon: Icon(Icons.add_circle),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NeoPopButton(
                        color: NeoButton.kSecondaryButtonLightColor,
                        bottomShadowColor: ColorUtils.getVerticalShadow(
                            NeoButton.kBorderColorGreen),
                        rightShadowColor: ColorUtils.getHorizontalShadow(
                            NeoButton.kBorderColorGreen),
                        animationDuration: NeoButton.kButtonAnimationDuration,
                        depth: NeoButton.kButtonDepth,
                        onTapUp: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return OverviewPage();
                              },
                            ),
                          );
                        },
                        border: Border.all(
                          color: NeoButton.kBorderColorGreen,
                          width: NeoButton.kButtonBorderWidth,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Find Hotels",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Handle end drawer item tap
              },
            ),
            ListTile(
              title: Text('View/Manage Trips'),
              onTap: () {
                // Handle end drawer item tap
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(
    BuildContext context,
    DateFormat dateFormat,
  ) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != dateController.text) {
      dateController.text = dateFormat.format(picked);
    }
  }
}
