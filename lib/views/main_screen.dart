import 'package:sadapay/components/botton_nav.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    print("Balance");
                  },
                  child: Container(
                      width: 170.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Current Balance",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              "Rs. 5000",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const Spacer(),
                            const Row(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.red,
                                    ),
                                    Align(
                                      widthFactor: 0.5,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        print("Load Money");
                      },
                      child: Container(
                        width: 160.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF27AEFC),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.arrow_downward,
                                  color: Colors.white),
                              const Spacer(),
                              Text("Load\nMoney",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        print("send and request");
                      },
                      child: Container(
                        width: 160.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).splashColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Icon(Icons.arrow_right_),
                              Text("Send & \nRequest",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
