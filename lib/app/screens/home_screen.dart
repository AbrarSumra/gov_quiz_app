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
      appBar: const AppBarScreen(appBarTitle: "Govt Job Quizzes",),
      drawer: const DrawerScreen(selectedIndex: 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(

            children: [

              /// upper container in home scree for lead borad , daily progress etc
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  CustomElevatedContainer(width: 120,height: 160,containerColor: AppColor.kWhiteColor,icon: Icons.ac_unit,title: "this",),
                    CustomElevatedContainer(width: 120,height: 160,containerColor: AppColor.kWhiteColor,icon: Icons.ac_unit,title: "this",),
                  CustomElevatedContainer(width: 120,height: 160,containerColor: AppColor.kWhiteColor,icon: Icons.ac_unit,title: "this",),

                ],),
              ),
///  this filter at home page for subjects
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomFilterWidget(),
              ),

/// this is gridview builder at home page for list of quizzes
              CustomGridView(items: items),
              //
            ],
          ),
        ),
      ),
    );
  }
}
