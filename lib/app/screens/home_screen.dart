import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/app_colors/app_colors.dart';
import 'package:gov_quiz_app/app/constants/widgets/custom_container_home.dart';
import 'package:gov_quiz_app/app/constants/widgets/custom_grideviewbuilder.dart';
import 'package:gov_quiz_app/app/screens/app_bar.dart';
import 'package:gov_quiz_app/app/screens/drawer_screen.dart';

import '../constants/widgets/custom_filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Sample data for grid items
  List<CustomGridItem> items = [
    CustomGridItem(
      title: 'Quizze 1',
      //   image: 'https://via.placeholder.com/150',
      backgroundColor: AppColor.kAppOrangeColor,
      icon: Icons.favorite,
    ),
    CustomGridItem(
      title: 'Quizze 2',
      //  image: 'https://via.placeholder.com/150',
      backgroundColor: AppColor.kAppOrangeColor,
      icon: Icons.favorite,
    ),
    CustomGridItem(
      title: 'Quizze 3',
      //  image: 'https://via.placeholder.com/150',
      backgroundColor: AppColor.kAppOrangeColor,
      icon: Icons.favorite,
    ),
    CustomGridItem(
      title: 'Quizze 4',
      //   image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Norwegian_quiz_championship_final_2009.jpg/800px-Norwegian_quiz_championship_final_2009.jpg',
      backgroundColor: AppColor.kAppOrangeColor,
      icon: Icons.favorite,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kAppBackgroundColor,
      appBar: const AppBarScreen(
        appBarTitle: "Govt Job Quizzes",
      ),
      drawer: const DrawerScreen(selectedIndex: 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: ListView(
            children: [
              /// upper container in home scree for lead borad , daily progress etc
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomElevatedContainer(
                    width: 120,
                    height: 160,
                    containerColor: AppColor.kWhiteColor,
                    icon: Icons.ac_unit,
                    title: "this",
                  ),
                  CustomElevatedContainer(
                    width: 120,
                    height: 160,
                    containerColor: AppColor.kWhiteColor,
                    icon: Icons.ac_unit,
                    title: "this",
                  ),
                  CustomElevatedContainer(
                    width: 120,
                    height: 160,
                    containerColor: AppColor.kWhiteColor,
                    icon: Icons.ac_unit,
                    title: "this",
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10),
                child: CustomFilterWidget(),
              ),
              customGridView(icon: CupertinoIcons.heart, title: 'Quiz 1')
            ],
          ),
        ),
      ),
    );
  }

  Widget customGridView({
    required IconData icon,
    required String title,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColor.kAppOrangeColor, // Default to white
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: AppColor.kWhiteColor, width: 3), // Orange border
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.black,
              ),
              /*Image.network(
                  image,
                  height: 100,
                  width: 80,
                ),*/
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
