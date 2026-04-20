import 'package:flutter/material.dart';
import '../../models/parking_spot.dart';
import '../../../../Core/Theme/app_colors.dart';

class ParkingSpotTile extends StatelessWidget {
  final ParkingSpot spot;
  final VoidCallback onTap;

  const ParkingSpotTile({super.key, required this.spot, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isOccupied = spot.status == SpotStatus.occupied;
    final isSelected = spot.status == SpotStatus.selected;

    Color bg;
    Color border;
    Color textColor;

    if (isSelected) {
      bg = AppColors.primary;
      border = AppColors.primary;
      textColor = Colors.white;
    } else if (isOccupied) {
      bg = AppColors.textPrimary;
      border = AppColors.textPrimary;
      textColor = const Color(0xFF8B5CF6);
    } else {
      bg = const Color(0xFFF5F3FF);
      border = const Color(0xFFE5E7EB);
      textColor = AppColors.primaryDark;
    }

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 6),
        height: 44,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: border, width: isSelected ? 0 : 1),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(0.35),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              spot.id,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w700,
                fontSize: 12,
                letterSpacing: 0.3,
              ),
            ),
            if (isOccupied)
              Positioned(
                right: 8,
                child: Icon(
                  Icons.directions_car_rounded,
                  size: 14,
                  color: const Color(0xFF8B5CF6).withOpacity(0.6),
                ),
              ),
            if (isSelected)
              const Positioned(
                right: 8,
                child: Icon(
                  Icons.check_circle_rounded,
                  size: 14,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
