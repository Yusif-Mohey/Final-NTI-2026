import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../Core/Theme/app_colors.dart';

class BookingVehicleInfo extends StatelessWidget {
  const BookingVehicleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: _InfoChip(
            icon: Icons.directions_car_rounded,
            label: 'VEHICLE',
            value: 'Tesla Model 3',
          ),
        ),
        Gap(12),
        Expanded(
          child: _InfoChip(
            icon: Icons.attach_money_rounded,
            label: 'RATE',
            value: '\$4.50 / hr',
          ),
        ),
      ],
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoChip({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.07),
            blurRadius: 12,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: AppColors.primary, size: 18),
          ),
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 9,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.8,
                ),
              ),
              const Gap(2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.primaryDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
