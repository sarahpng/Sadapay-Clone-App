import 'package:flutter/material.dart';
import 'package:sadapay/components/main_card_info_view.dart';
import 'package:sadapay/components/transaction_history.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: [
            MainCardInfo(),

            SizedBox(
              height: 20,
            ),

            // TODO add draggable and scrollable list

            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
