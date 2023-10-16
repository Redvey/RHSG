import 'package:flutter/material.dart';




class MyTabbedPage extends StatelessWidget {
  final List<Tab> tabs = [
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
    Tab(text: 'Tab 3'),
    // Add more tabs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabbed Page'),
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: YourWidgetsAboveTabBar(), // Place your widgets above the tab bar here
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    tabs: tabs,
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              TabPage(1),
              TabPage(2),
              TabPage(3),
              // Add more tab pages as needed
            ],
          ),
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final int tabNumber;

  TabPage(this.tabNumber);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab $tabNumber Content'),
    );
  }
}

class YourWidgetsAboveTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Place your widgets above the tab bar here
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
