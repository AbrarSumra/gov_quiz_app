import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/app_colors/app_colors.dart';

class CustomGridItem {
  final String? title;
  final String? image;
  final Color? backgroundColor;
  final IconData? icon;

  CustomGridItem({
    this.title,
    this.image,
    this.backgroundColor,
    this.icon,
  });
}

class CustomGridView extends StatelessWidget {
  final List<CustomGridItem> items;

  CustomGridView({required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 items per row
        // childAspectRatio: 9 / 16, // 9:16 aspect ratio
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CustomGridContainer(item: items[index]);
      },
    );
  }
}

class CustomGridContainer extends StatelessWidget {
  final CustomGridItem item;

  CustomGridContainer({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: item.backgroundColor ?? Colors.white, // Default to white
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: AppColor.kWhiteColor, width: 3), // Orange border
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (item.icon != null)
            Icon(
              item.icon,
              size: 40,
              color: Colors.black,
            ),
          if (item.image != null)
            Image.network(
              item.image!,
              height: 100,
              width: 80,
            ),
          if (item.title != null)
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                item.title!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
