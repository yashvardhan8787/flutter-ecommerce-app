import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/profile3.png",
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02,
              vertical: size.height * 0.03,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  height: size.height * 0.45,
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.03,
                    vertical: size.height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.04,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: size.width * 0.1,
                                      backgroundImage:
                                      const AssetImage("images/profile3.png"),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: size.width * 0.06,
                                        width: size.width * 0.06,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:Color.fromARGB(
                                              255, 95, 225, 99),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(size.width * 0.05),
                                        border: Border.all(
                                          color: Colors.black54,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.01,
                                        horizontal: size.width * 0.03,
                                      ),
                                      child: Text(
                                        "ADD FRIEND",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.035,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.02),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            size.width * 0.05),
                                        color: Colors.pink,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.01,
                                        horizontal: size.width * 0.03,
                                      ),
                                      child: Text(
                                        "Follow",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.035,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              "Yash Vardhan Singh",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: size.width * 0.08,
                              ),
                            ),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: size.width * 0.04,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              "Hi I am Yash, I am a software developer and programmer.",
                              style: TextStyle(
                                fontSize: size.width * 0.04,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Divider(color: Colors.black12),
                      SizedBox(
                        height: size.height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            friendAndMore(size, "FRIENDS", "2318"),
                            friendAndMore(size, "FOLLOWING", "364"),
                            friendAndMore(size, "FOLLOWER", "175"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget friendAndMore(Size size, String title, String number) {
    return SizedBox(
      width: size.width * 0.25,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.035,
              color: Colors.black26,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.06,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
