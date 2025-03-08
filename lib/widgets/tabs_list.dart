import 'package:flutter/material.dart';
import 'package:movie_app/models/category_tab_model.dart';
import 'package:movie_app/widgets/tab_widget.dart';

class TabsList extends StatefulWidget {
  const TabsList({super.key, required this.controller});
  final ScrollController controller;

  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  int _activeTab = 0;

  final List<CategoryTabModel> models = [
    CategoryTabModel(title: 'All'),
    CategoryTabModel(title: 'Action'),
    CategoryTabModel(title: 'Comedy'),
    CategoryTabModel(title: 'Drama'),
    CategoryTabModel(title: 'Documentary'),
    CategoryTabModel(title: 'Horror'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        controller: widget.controller,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 5 ? 0 : 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _activeTab = index;
                });
              },
              child: TabWidget(
                isActive: _activeTab == index,
                model: models[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
