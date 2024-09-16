import 'package:flutter/material.dart';
import 'package:gov_quiz_app/app/constants/app_colors/app_colors.dart';

class CustomFilterWidget extends StatefulWidget {
  const CustomFilterWidget({super.key});

  @override
  State<CustomFilterWidget> createState() => _CustomFilterWidgetState();
}

class _CustomFilterWidgetState extends State<CustomFilterWidget> {
  // Default selected option
  String dropdownValue = 'GK';

  // List of options for dropdown
  final List<String> dropdownOptions = [
    'GK',
    'Math',
    'Reasoning',
    'English',
    'Hindi',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height for responsive design
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: screenWidth * 0.7,
          height: 50, // 7% of screen height
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColor.kWhiteColor,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey),
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            isExpanded: true, // Makes the dropdown take the full width
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 16,
            style: const TextStyle(color: Colors.black, fontSize: 16),
            underline: const SizedBox(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items:
                dropdownOptions.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: screenWidth * 0.1, // 20% of screen width
          height: 50, // 7% of screen height
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.kWhiteColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Icon(
            Icons.filter_alt,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }
}
