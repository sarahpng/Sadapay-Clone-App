import 'package:flutter/material.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 40.0, 8.0, 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.person_2_rounded,
                    color: Color(0xFF01D2AF),
                  ),
                  title: Text("Sarah"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Limit",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Incoming",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs. 400,000 left",
                            style: TextStyle(
                              color: Color(0xFFFF7B66),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF7B66),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Your Rs. 400k montly limit resets on the 1st of next month",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Documents",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Account Statement",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.bookmark_border_rounded,
                          color: Color(0xFFFF7B66),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(children: [
                    Text(
                      "Refer & earn",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  child: const ListTile(
                    leading: Icon(Icons.help, color: Color(0xFFFF7B66)),
                    title: Text("Help center"),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.shield,
                        color: Color(0xFFFF7B66),
                      ),
                      title: Text("Privacy policy"),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.note,
                        color: Color(0xFFFF7B66),
                      ),
                      title: Text("Terms & conditions"),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.calendar_month,
                        color: Color(0xFFFF7B66),
                      ),
                      title: Text("Schedule of charges"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.phone_android_rounded,
                    color: Color(0xFFFF7B66),
                  ),
                  title: Text("Manage devices"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: const ListTile(
                  title: Text("Raast ID management"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.heart_broken,
                    color: Color(0xFFFF7B66),
                  ),
                  title: Text("Close account"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color(0xFFFF7B66),
                  ),
                  title: Text("Log out"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Developed for 🇵🇰 with ❤️ by 🌏",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "App version: 1.0.7772",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Call us at ",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            "0800-1-SADA",
                            style: TextStyle(
                              color: Color(0xFFFF7B66),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
