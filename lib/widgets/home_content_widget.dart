import 'package:flutter/material.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/models/category_tab_model.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/all_movies_page.dart';
import 'package:movie_app/widgets/tab_widget.dart';

class HomeContentWidget extends StatefulWidget {
  const HomeContentWidget({super.key});

  @override
  State<HomeContentWidget> createState() => _HomeContentWidgetState();
}

class _HomeContentWidgetState extends State<HomeContentWidget> {
  late PageController _pageController;
  late ScrollController _scrollController;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _scrollController = ScrollController();
    _pageController.addListener(_syncTabScroll);
  }

  void _syncTabScroll() {
    setState(() {
      _currentIndex = _pageController.page!.round();
    });
    double screenWidth = context.width;
    double tabWidth = 85;
    double offset =
        (_currentIndex * tabWidth) - (screenWidth / 2) + (tabWidth / 2);
    _scrollController.animateTo(
      offset.clamp(0.0, _scrollController.position.maxScrollExtent),
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );
  }

  void _onTapTab(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.removeListener(_syncTabScroll);
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(
              'Categories',
              style: AppStyles.semiBold20.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: models.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: index == 5 ? 0 : 8),
                    child: GestureDetector(
                      onTap: () => _onTapTab(index),
                      child: TabWidget(
                        isActive: _currentIndex == index,
                        model: models[index],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: context.height * 0.61,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: const [
                  AllMoviesPage(),
                  AllMoviesPage(),
                  AllMoviesPage(),
                  AllMoviesPage(),
                  AllMoviesPage(),
                  AllMoviesPage(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

final List<CategoryTabModel> models = [
  CategoryTabModel(title: 'All', onTap: () {}),
  CategoryTabModel(title: 'Action', onTap: () {}),
  CategoryTabModel(title: 'Comedy', onTap: () {}),
  CategoryTabModel(title: 'Drama', onTap: () {}),
  CategoryTabModel(title: 'Documentary', onTap: () {}),
  CategoryTabModel(title: 'Horror', onTap: () {}),
];
