import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pagesData = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pagesData[currentPage],
      backgroundColor: AppColor.kAppOrangeColor,
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonIconM(
              title: 'Home',
              isEnable: currentPage == 0 ? true : false,
              icon: Icons.home_outlined,
              onTap: () {
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            ButtonIconM(
              title: 'Profile',
              icon: CupertinoIcons.profile_circled,
              isEnable: currentPage == 1 ? true : false,
              onTap: () {
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            ButtonIconM(
              title: 'Setting',
              icon: CupertinoIcons.settings,
              isEnable: currentPage == 2 ? true : false,
              onTap: () {
                setState(() {
                  currentPage = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}*/
