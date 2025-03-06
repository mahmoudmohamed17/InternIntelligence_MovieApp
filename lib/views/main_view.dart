import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/utils/app_colors.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Text('Home'),
    Text('Search'),
    Text('Saved'),
    Text('Downloads'),
    Text('Me'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        enableFeedback: true,
        elevation: 0,
        backgroundColor: AppColors.extraLightPrimaryColor,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(FontAwesomeIcons.house, color: Colors.white),
            icon: Icon(
              FontAwesomeIcons.house,
              color: AppColors.secondaryTextColor,
            ),
            backgroundColor: AppColors.extraLightPrimaryColor,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            ),
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColors.secondaryTextColor,
            ),
            backgroundColor: AppColors.extraLightPrimaryColor,
            label: 'Search',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FontAwesomeIcons.bookmark, color: Colors.white),
            icon: Icon(
              FontAwesomeIcons.bookmark,
              color: AppColors.secondaryTextColor,
            ),
            backgroundColor: AppColors.extraLightPrimaryColor,
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FontAwesomeIcons.download, color: Colors.white),
            icon: Icon(
              FontAwesomeIcons.download,
              color: AppColors.secondaryTextColor,
            ),
            backgroundColor: AppColors.extraLightPrimaryColor,
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FontAwesomeIcons.user, color: Colors.white),
            icon: Icon(
              FontAwesomeIcons.user,
              color: AppColors.secondaryTextColor,
            ),
            backgroundColor: AppColors.extraLightPrimaryColor,
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
