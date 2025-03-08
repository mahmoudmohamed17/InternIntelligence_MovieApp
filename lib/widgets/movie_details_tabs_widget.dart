import 'package:flutter/material.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/movie_trailer_widget.dart';

class MovieDetailsTabsWidget extends StatefulWidget {
  const MovieDetailsTabsWidget({super.key, required this.movie});
  final MovieEntity movie;

  @override
  State<MovieDetailsTabsWidget> createState() => _MovieDetailsTabsWidgetState();
}

class _MovieDetailsTabsWidgetState extends State<MovieDetailsTabsWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.00),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabBar(
            controller: _tabController,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            indicatorColor: AppColors.buttonColor,
            indicatorPadding: const EdgeInsets.only(bottom: -8),
            labelColor: AppColors.buttonColor,
            labelStyle: AppStyles.regular16,
            unselectedLabelColor: AppColors.secondaryTextColor,
            unselectedLabelStyle: AppStyles.regular16,
            dividerColor: Colors.transparent,
            onTap: (index) {},
            tabs: const [Text('Episode'), Text('Similar'), Text('About')],
          ),
          const SizedBox(height: 32),
          MovieTrailerWidget(movie: widget.movie),
        ],
      ),
    );
  }
}
