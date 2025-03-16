import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/managers/home_cubit/home_cubit.dart';
import 'package:movie_app/models/category_tab_model.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/movies_page.dart';
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
    context.read<HomeCubit>().getAllMovies(
      id: genresMapReversed[models[_currentIndex].title]!,
    );
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
    if (_currentIndex == index) return;
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
    context.read<HomeCubit>().getAllMovies(
      id: genresMapReversed[models[_currentIndex].title]!,
    );
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
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
                      padding: EdgeInsets.only(right: index == models.length - 1 ? 0 : 8),
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
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _onTapTab(index);
                  },
                  itemCount: models.length,
                  itemBuilder: (context, index) => const MoviesPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final List<CategoryTabModel> models = [
  CategoryTabModel(title: 'Action'),
  CategoryTabModel(title: 'Adventure'),
  CategoryTabModel(title: 'Comedy'),
  CategoryTabModel(title: 'Crime'),
  CategoryTabModel(title: 'Drama'),
  CategoryTabModel(title: 'Documentary'),
  CategoryTabModel(title: 'Horror'),
  CategoryTabModel(title: 'Family'),
];

Map<String, int> genresMapReversed = {
  "Action": 28,
  "Adventure": 12,
  "Animation": 16,
  "Comedy": 35,
  "Crime": 80,
  "Documentary": 99,
  "Drama": 18,
  "Family": 10751,
  "Fantasy": 14,
  "Horror": 27,
  "Mystery": 9648,
  "Romance": 10749,
  "Science Fiction": 878,
  "Thriller": 53,
};
