import 'package:flutter/material.dart';
import 'package:rsa/presentation/widget/dashboard_card.dart';
import 'package:rsa/presentation/widget/nav_manu.dart';
import 'package:rsa/presentation/widget/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: _buildMobileLayout(),
        tablet: _buildTablateLayout(),
        desktop: _buildDesktopLayout());
  }

  Widget _buildMobileLayout() {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.pink),
        drawer: NevMenu(),
        body: SingleChildScrollView(
          child: Column(
            children: [_getSummarySection(crossAxisCount: 1, ratio: 1.6)],
          ),
        ));
  }

  Widget _buildTablateLayout() {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink),
      drawer: NevMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [_getSummarySection(crossAxisCount: 2, ratio: 1.6)],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Row(
        children: [
          const NevMenu(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [_getSummarySection(crossAxisCount: 4, ratio: 1.5)],
            ),
          ))
        ],
      ),
    );
  }

  Widget _getSummarySection(
      {required int crossAxisCount, required double ratio}) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          //  childAspectRatio: ratio
          mainAxisExtent: 200),
      children: [
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
      ],
    );
  }
}
