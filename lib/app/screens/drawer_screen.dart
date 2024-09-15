import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/screens/home_screen.dart';
import 'package:gov_quiz_app/app/screens/profile_screen.dart';
import '../constants/app_colors/app_colors.dart';
import '../constants/widgets/drawer_list_tile.dart';

class DrawerScreen extends StatefulWidget {
  final int selectedIndex; // Accept a selected index

  const DrawerScreen({super.key, this.selectedIndex = 0});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex; // Initialize the selected index
  }

  @override
  Widget build(BuildContext context) {
    //var isDark = context.watch<ThemeProvider>().themeValue;

    return Drawer(
      backgroundColor: AppColor.kAppBackgroundColor,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            /*const SizedBox(
              height: 60,
              child: FittedBox(
                child: Image(
                  image: AssetImage('assets/png/mylifesaverlogo.png'),
                ),
              ),
            ),*/
            const SizedBox(height: 20),
            /*SwitchListTile(
              title: isDark
                  ? const Text(
                      "Dark Mode",
                      style: TextStyle(
                        color: AppColor.kFontWhite,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  : const Text(
                      "Light Mode",
                      style: TextStyle(
                        color: AppColor.kFontWhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              controlAffinity: ListTileControlAffinity.trailing,
              inactiveThumbColor: AppColor.kFontBlack,
              activeColor: AppColor.kButtonOrange,
              thumbIcon: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return const Icon(Icons.nightlight_outlined);
                } else {
                  return const Icon(Icons.sunny);
                }
              }),
              value: context.watch<ThemeProvider>().themeValue,
              onChanged: (value) {
                context.read<ThemeProvider>().themeValue = value;
                Navigator.pop(context);
                setState(() {});
              },
            ),*/
            const SizedBox(height: 10),
            DrawerListTile(
              title: 'Home',
              icon: CupertinoIcons.home,
              isSelected: _selectedIndex == 0, // Highlight if selected
              onTap: () {
                _navigateToPage(context, 0, const HomeScreen());
              },
            ),
            DrawerListTile(
              title: 'Profile',
              icon: CupertinoIcons.profile_circled,
              isSelected: _selectedIndex == 1, // Highlight if selected
              onTap: () {
                _navigateToPage(context, 1, const ProfileScreen());
              },
            ),
            DrawerListTile(
              title: 'Help',
              icon: Icons.help,
              isSelected: _selectedIndex == 11, // Highlight if selected
              onTap: () {
                // Implement Help navigation
              },
            ),
            DrawerListTile(
              title: 'Log Out',
              icon: Icons.logout,
              isSelected: false, // Log Out is not selectable
              //onTap: _logout,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context, int index, Widget page) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page, // Navigate to the selected page
      ),
    );
  }
}
