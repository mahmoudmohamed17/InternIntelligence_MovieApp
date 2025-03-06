import 'package:flutter/material.dart';
import 'package:movie_app/widgets/tab_widget.dart';

class TabsList extends StatefulWidget {
  const TabsList({super.key});

  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  int _activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 5 ? 0 : 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _activeTab = index;
                });
              },
              child: TabWidget(isActive: _activeTab == index,)),
          );
        },
      ),
    );
  }
}
