import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/images.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

class OverviewBody extends StatelessWidget {
  const OverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: screenHeight / 2,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    imageUrls[index],
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  "Overview",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: Colors.black12,
            height: 1,
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Broklun, NewYork, United States of America",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Broklun-c Residence",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6,
                ),
                Icon(Icons.rate_review),
                Text(
                    "Cillum amet veniam irure magna est. exercitation labore tempor non eu elit culpa velit quis velit velit excepteur. Tempor nostrud sit in ullamco minim mollit sint sint. Non tempor amet non non incididunt cillum consectetur. Ad cillum eu ullamco cupidatat excepteur laborum quis in.")
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Colors.black12,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Column(
                  children: [
                    Text(
                      "\$253/Night",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Text(
                      "Excellent(34)",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  width: 100,
                  child: NeoPopButton(
                      onTapUp: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.grey,
                                title: const Text(
                                  "message",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                content: const Text(
                                    "Booking is done Successfully",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Close",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text("Book",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      color: Colors.teal),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
