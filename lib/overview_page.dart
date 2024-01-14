import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/overview_body.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 10,
          leading: IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle home icon press
              // You can navigate to the home screen or perform any action
              Navigator.pop(context);
            },
          ),
          // actions: [
          //   Padding(
          //     padding: EdgeInsets.all(8.0),
          //     child: TextField(
          //       decoration: InputDecoration(
          //         hintText: 'Search {"Thailand,Asia"}',
          //         hintStyle: TextStyle(color: Colors.black),
          //         enabledBorder: OutlineInputBorder(
          //           borderSide: BorderSide(color: Colors.grey),
          //         ),
          //       ),
          //     ),
          //   ),
          // ],
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
        body: OverviewBody(),
      ),
    );
  }
}
