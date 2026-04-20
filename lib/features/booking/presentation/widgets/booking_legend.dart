import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../Core/Theme/app_colors.dart';

class BookingLegend extends StatelessWidget {
  const BookingLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _LegendItem(Color(0xFFF5F3FF), 'Available'),
        Gap(16),
        _LegendItem(AppColors.textPrimary, 'Occupied'),
        Gap(16),
        _LegendItem(AppColors.primary, 'Selected'),
      ],
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendItem(this.color, this.label);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
          ),
        ),
        const Gap(5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.textSecondary,
            height: 1,
          ),
        ),
      ],
    );
  }
}
