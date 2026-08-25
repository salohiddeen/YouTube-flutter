import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatefulWidget {
  final Function(int index) onPressed;
  const BottomNavigation({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 3),
      child: GNav(
        rippleColor: Colors.grey[100]!,
        hoverColor: Colors.grey[100]!,
        haptic: true,
        tabBorderRadius: 14,
        tabShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 18,
            offset: const Offset(0, -4),
          )
        ],
        curve: Curves.easeInToLinear,
        duration: const Duration(milliseconds: 419),
        gap: 8,
        color: Colors.grey[800],
        activeColor: const Color(0xffE5484D),
        iconSize: 24,
        tabBackgroundColor: const Color(0xffFCEAEC),
          0.1,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 19.5,
          vertical: 5,
        ),
        tabs: const [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.videocam, text: "Shorts"),
          GButton(icon: Icons.cloud_upload),
          GButton(icon: Icons.search, text: "Search"),
          GButton(icon: Icons.logout_rounded, text: "Log out"),
        ],
        onTabChange: (index) {
          setState(() => currentIndex = index);
          widget.onPressed(index);
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
