import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';

class GarageSearchBar extends StatelessWidget {
  const GarageSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Garage Services & Facilities',
        hintStyle: TextStyle(color: AppColors.secondary, fontSize: 20),
        fillColor: Colors.grey.shade100,
        filled: true,
        prefixIcon: Icon(Icons.search, size: 30),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
