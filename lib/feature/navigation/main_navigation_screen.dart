import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/helpers/app_assets.dart';
import '../../core/theme/app_color.dart';
import '../explore/screens/explore_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    ExploreScreen(),
    ExploreScreen(),
    ExploreScreen(),
    ExploreScreen(),
    ExploreScreen(),
  ];

  final List<String> _labels = [
    'Explore',
    'Reservation',
    'Wishlist',
    'Inbox',
    'Profile',
  ];
  final List<String> _iconPaths = [
    AppAssets.svgsNavBarExploreIcon,
    AppAssets.svgsNavBarReservationIcon,
    AppAssets.svgsNavBarWishlist,
    AppAssets.svgsNavBarInbox,
    AppAssets.svgsNavBarProfileIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: List.generate(_labels.length, (index) {
          final isSelected = _selectedIndex == index;

          return BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: SvgPicture.asset(
                _iconPaths[index],
                color: isSelected ? AppColor.primary : AppColor.secondary,
              ),
            ),
            label: _labels[index],
          );
        }),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xFF7C3AED),
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        selectedItemColor: const Color(0xFF7C3AED),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
