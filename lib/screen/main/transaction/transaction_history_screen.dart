import 'package:flutter/material.dart';
import '../../../screen/main/transaction/history_screen.dart';
import '../../../screen/main/transaction/order_screen.dart';
import '../../../theme.dart';

class TransactionHistoryScreen extends StatefulWidget {
  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: kTextTabBarHeight,
        title: Text(
          "Play",
          style: titleTextStyle,
        ),
        backgroundColor: backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelStyle: tabBarTextStyle,
          labelColor: primaryColor500,
          unselectedLabelColor: darkBlue300,
          indicatorColor: primaryColor500,
          tabs: const [
            Tab(
              text: "Order",
            ),
            Tab(
              text: "History",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          OrderScreen(),
          HistoryScreen(),
        ],
      ),
    );
  }
}
